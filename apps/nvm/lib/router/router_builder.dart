import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/app.dart';
import 'package:nvm/router/navigation_guard.dart';
import 'package:template_parser/template_parser.dart';
import 'package:active_resource/active_resource.dart' as active_resource;

final class RouterBuilder {
  final NavigationGuard navigationGuard;
  final TemplateComponent template;

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
                  routes: [
                    ShellRoute(
                      builder: (context, state, child) {
                        int index = 0;
                        final location = state.matchedLocation;
                        for (int i = 0; i < app.pages.length; i++) {
                          if (location
                              .contains('@${app.pages[i].contextName}')) {
                            index = i;
                            break;
                          }
                        }
                        final String projectId = state.pathParameters['project_id']!;
                        final String? resourceId = state.pathParameters['resource_id'];
                        return TabBarLayout(
                          navigationIndex: index,
                          onDestination: (int value) {
                            for (final page in app.pages) {
                              context.go(
                                  '/projects/$projectId/@${page.contextName}' + (resourceId == null ? '' : '/$resourceId'),
                                );
                            }
                          },
                          destinations: [
                            for (final page in app.pages)
                              TabBarDestination(
                                label: page.title ?? '',
                              ),
                          ],
                          child: child,
                        );
                      },
                      routes: [
                        for (final page in app.pages)
                          GoRoute(
                            path: '@${page.contextName}/:resource_id',
                            builder: (_, state) =>
                                active_resource.ActiveResourcePage(
                              pageComponent: page,
                              resourceId: state.pathParameters['resource_id'],
                            ),
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
