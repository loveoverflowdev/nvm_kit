import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/app.dart';
import 'package:nvm/router/navigation_guard.dart';
import 'package:template_parser/template_parser.dart';
import 'package:active_resource/active_resource.dart' as active_resource;

final class RouterBuilder {
  final NavigationGuard navigationGuard;
  final TemplateComponent template;

  final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>();

  RouterBuilder({
    required this.template,
    required this.navigationGuard,
  });

  GoRouter build() {
    // template.app.pages.sort((a, b) => a.order.compareTo(b.order));
    final app = template.apps.first;
    return GoRouter(
      initialLocation: '/signin',
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
        ShellRoute(
          navigatorKey: _rootNavigatorKey,
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
          routes: [
            GoRoute(
              path: '/',
              builder: (_, state) => const ProjectsPage(),
              routes: [
                GoRoute(
                  path: 'projects/:project_id',
                  // builder: (_, state) => ProjectPage(
                  //   id: state.pathParameters['id']!,
                  //   pages: template.apps.first.pages,
                  // ),
                  redirect: (context, state) {
                    final location = state.fullPath ?? '';
                    if (!location.contains('@')) {
                      final projectId = state.pathParameters['project_id']!;
                      final path = '/projects/$projectId/@${app.pages.first.contextName}';
                      return path;
                    }
                    return null;
                  },
                  // builder:(context, state) {
                  //   // final page = app.pages.first;
                  //   // final String projectId = state.pathParameters['project_id']!;
                  //   // final String? resourceId = (state.extra as Map?)?['resource_id'];
                  //   // WidgetsBinding.instance.addPostFrameCallback((_) {
                  //   //   context.go('/projects/$projectId/@${page.contextName}', 
                  //   //     extra: {
                  //   //       'resource_id': resourceId,
                  //   //     },
                  //   //   );
                  //   // });
                  //   // return const SizedBox.shrink();
                  // },
                  routes: [
                    StatefulShellRoute.indexedStack(
                      builder: (context, state, child) {
                        int index = 0;
                        final location = state.fullPath ?? '';
                        for (int i = 0; i < app.collectionTypePages.length; i++) {
                          if (location
                              .contains('@${app.pages[i].contextName}')) {
                            index = i;
                            break;
                          }
                        }
                        final String projectId = state.pathParameters['project_id']!;
                        final String? resourceId = (state.extra as Map?)?['resource_id'];
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
                            final path = '/projects/$projectId/@${page.contextName}';
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
                          StatefulShellBranch(
                            routes: [
                              GoRoute(
                                name: '@${page.contextName}',
                                path: '@${page.contextName}',
                                // builder: (context, state) {
                                //   return Placeholder(
                                //     child: Column(
                                //       children: [
                                //         Text('@' + page.contextName),
                                //         Text(page.title ?? ''),
                                //       ],
                                //     ),
                                //   );
                                // },
                                builder: (context, state) {
                                  return active_resource.ActiveResourcePage(
                                    pageComponent: page,
                                    resourceId: (state.extra as Map?)?['resource_id'], 
                                    onViewDetail: (String? detailContextName, String resourceId) {
                                      if (detailContextName == null) return;

                                      final String projectId = state.pathParameters['project_id']!;
                                      final path = '/projects/$projectId/@$detailContextName';
                                      context.push(path, extra: {
                                        'resource_id': resourceId,
                                      });
                                    },
                                  );
                                },
                              ),
                            ]
                          ),
                      ], 
                    ),
                  ],
                ),
                GoRoute(
                  path: 'notifications',
                  builder: (_, state) => const NotificationsPage(),
                ),
                GoRoute(
                  path: 'preferences',
                  builder: (_, state) => const PreferencesPage(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
