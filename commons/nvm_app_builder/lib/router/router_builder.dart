import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm_app_builder/app.dart';
import 'package:template_parser/template_parser.dart';
import 'navigation_guard.dart';
import 'package:active_resource/active_resource.dart' as active_resource;

final class RouterBuilder {
  final NavigationGuard navigationGuard;
  final TemplateComponent template;

  RouterBuilder({
    required this.template,
    required this.navigationGuard,
  });

  static String initialLocation = '/signin';

  GoRouter build() {
    final app = template.app;
    return GoRouter(
      initialLocation: initialLocation,
      routes: [
        GoRoute(
          path: '/signin',
          builder: (context, state) => const SigninPage(),
          redirect: (context, state) async {
            if (await navigationGuard.hasToken) {
              return '/workspaces';
            }
            return null;
          },
        ),
        GoRoute(
          path: '/workspaces',
          builder: (context, state) => const WorkspacesPage(),
          redirect: (context, state) async {
            if (await navigationGuard.didSelectWorkspace) {
              return '/';
            }
            return null;
          },
          routes: [],
        ),
        _homeRoutes(app),
      ],
    );
  }

  StatefulShellRoute _homeRoutes(AppComponent app) {
    return StatefulShellRoute.indexedStack(
      builder: (context, state, child) {
        int index = 0;
        final location = state.matchedLocation;
        if (location.startsWith('/projects')) {
          index = 0;
        } else if (location.startsWith('/notifications')) {
          index = 1;
        } else if (location.startsWith('/preferences')) {
          index = 2;
        }
        return RootLayout(
          destinations: const [
            RootDestination(
              label: 'Project',
              selectedIcon: Icons.work,
              unselectedIcon: Icons.work_outlined,
            ),
            RootDestination(
              label: 'Notification',
              selectedIcon: Icons.notifications,
              unselectedIcon: Icons.notifications_outlined,
            ),
            RootDestination(
              label: 'Preference',
              selectedIcon: Icons.settings,
              unselectedIcon: Icons.settings_outlined,
            ),
          ],
          navigationIndex: index,
          onDestination: (index) {
            switch (index) {
              case 0:
                context.go('/');
                break;
              case 1:
                context.go('/notifications');
                break;
              case 2:
                context.go('/preferences');
                break;
            }
          },
          child: child,
        );
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/preferences',
              builder: (_, state) => const PreferencesPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/notifications',
              builder: (_, state) => const NotificationsPage(),
            ),
          ],
        ),
        _projectRoutes(app)
      ],
    );
  }

  StatefulShellBranch _projectRoutes(AppComponent app) {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/',
          builder: (_, state) => const ProjectsPage(),
          routes: [
            GoRoute(
              path: 'projects/:project_id',
              redirect: (context, state) {
                final location = state.fullPath ?? '';
                if (!location.contains('@')) {
                  final projectId = state.pathParameters['project_id']!;
                  final path =
                      '/projects/$projectId/@${app.pages.first.contextName}';
                  return path;
                }
                return null;
              },
              routes: [
                StatefulShellRoute.indexedStack(
                  builder: (context, state, child) {
                    int index = 0;
                    final location = state.fullPath ?? '';
                    for (int i = 0; i < app.collectionTypePages.length; i++) {
                      if (location.contains('@${app.pages[i].contextName}')) {
                        index = i;
                        break;
                      }
                    }
                    final String projectId =
                        state.pathParameters['project_id']!;
                    final String? resourceId =
                        (state.extra as Map?)?['resource_id'];
                    final destinations = [
                      for (final page in app.collectionTypePages)
                        TabBarDestination(
                          label: page.title ?? '',
                        ),
                    ];
                    return TabBarLayout(
                      navigationIndex: index,
                      onDestination: (int value) {
                        final page = app.collectionTypePages[value];
                        final path =
                            '/projects/$projectId/@${page.contextName}';
                        context.go(
                          path,
                          extra: {
                            'resource_id': resourceId,
                          },
                        );
                      },
                      destinations: destinations,
                      child: child,
                    );
                  },
                  branches: [
                    for (final page in app.pages)
                      StatefulShellBranch(routes: [
                        GoRoute(
                          name: '@${page.contextName}',
                          path: '@${page.contextName}',
                          builder: (context, state) {
                            final String projectId =
                                state.pathParameters['project_id']!;
                            return active_resource.ActiveResourcePage(
                              projectId: projectId,
                              pageComponent: page,
                              resourceId: (state.extra as Map?)?['resource_id'],
                              onViewDetail: (
                                String? contextName,
                                String resourceId,
                              ) {
                                if (contextName == null) return;

                                final String projectId =
                                    state.pathParameters['project_id']!;
                                final path =
                                    '/projects/$projectId/@$contextName';
                                context.push(path, extra: {
                                  'resource_id': resourceId,
                                });
                              },
                              onRouteCreateForm: (String? contextName) {
                                if (contextName == null) return;

                                final String projectId =
                                    state.pathParameters['project_id']!;
                                final path =
                                    '/projects/$projectId/@$contextName';
                                context.push(path);
                              },
                            );
                          },
                        ),
                      ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
