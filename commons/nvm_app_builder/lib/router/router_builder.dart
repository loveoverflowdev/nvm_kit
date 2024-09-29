import 'package:flutter/cupertino.dart';
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
              return '/projects';
            }
            return null;
          },
        ),
        _homeRoutes(app),
      ],
    );
  }

  StatefulShellRoute _homeRoutes(AppComponent app) {
    return StatefulShellRoute(
      branches: [
        _projectRoutes(app),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/notifications',
              builder: (_, state) => const NotificationsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/preferences',
              builder: (_, state) => const PreferencesPage(),
            ),
          ],
        ),
      ],
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return navigationShell;
      },
      navigatorContainerBuilder: (
        BuildContext context,
        StatefulNavigationShell navigationShell,
        List<Widget> children,
      ) {
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
          navigationShell: navigationShell,
          children: children,
        );
      },
    );
  }

  StatefulShellBranch _projectRoutes(AppComponent app) {
    return StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/projects',
          builder: (_, state) => const ProjectsPage(),
          routes: [
            GoRoute(
              path: ':project_id',
              redirect: (context, state) {
                final projectId = state.pathParameters['project_id']!;
                if (state.fullPath?.endsWith(':project_id') == true) {
                  final path =
                      '/projects/$projectId/${app.collectionTypePages.first.contextName}';
                  return path;
                }

                return null;
              },
              routes: [
                StatefulShellRoute.indexedStack(
                  restorationScopeId: 'root',
                  builder: (context, state, child) {
                    int index = 0;
                    final location = state.matchedLocation;
                    for (int i = 0; i < app.collectionTypePages.length; i++) {
                      if (location.contains(app.pages[i].contextName)) {
                        index = i;
                        break;
                      }
                    }
                    final String projectId =
                        state.pathParameters['project_id']!;

                    final destinations = [
                      for (final page in app.collectionTypePages)
                        TabBarDestination(
                          label: page.title ?? '',
                        ),
                    ];

                    return ProjectTabBarLayout(
                      projectId: projectId,
                      navigationIndex: index,
                      onDestination: (int value) {
                        final page = app.collectionTypePages[value];
                        final path = '/projects/$projectId/${page.contextName}';
                        context.go(
                          path,
                        );
                      },
                      destinations: destinations,
                      child: child,
                    );
                  },
                  branches: [
                    for (final page in app.collectionTypePages)
                      StatefulShellBranch(
                        routes: [
                          GoRoute(
                            path: page.contextName,
                            builder: (context, state) {
                              final String projectId =
                                  state.pathParameters['project_id']!;
                              return active_resource
                                  .ActiveResourceCollectionPage(
                                projectId: projectId,
                                pageComponent: page,
                                setState: (state.extra as Map?)?['set_state'],
                                onRouteDetailView: ({
                                  required activeResourceId,
                                  required contextName,
                                }) {
                                  if (contextName == null) return;
                                  final String projectId =
                                      state.pathParameters['project_id']!;
                                  final path =
                                      '/projects/$projectId/$contextName/$activeResourceId';
                                  context.push(path);
                                },
                                onRouteCreateForm: ({
                                  required contextName,
                                }) {
                                  if (contextName == null) return;
                                  final String projectId =
                                      state.pathParameters['project_id']!;
                                  final path =
                                      '/projects/$projectId/$contextName';
                                  context.push(path);
                                },
                                onRouteUpdateForm: ({
                                  required activeResourceId,
                                  required contextName,
                                }) {
                                  if (contextName == null) return;
                                  final String projectId =
                                      state.pathParameters['project_id']!;
                                  final path =
                                      '/projects/$projectId/$contextName/$activeResourceId';
                                  context.push(path);
                                },
                              );
                            },
                          ),
                        ],
                      ),

                    //
                  ],
                ),
                for (final page in app.createFormTypePages)
                  GoRoute(
                    path: page.contextName,
                    builder: (context, state) {
                      final String projectId =
                          state.pathParameters['project_id']!;
                      return active_resource.ActiveResourceCreateFormPage(
                        projectId: projectId,
                        pageComponent: page,
                        onRouteListView: ({
                          required contextName,
                        }) {
                          if (contextName == null) return;
                          final String projectId =
                              state.pathParameters['project_id']!;
                          final path = '/projects/$projectId/$contextName';
                          context.go(path, extra: {
                            'set_state': true,
                          });
                        },
                      );
                    },
                  ),
                //
                for (final page in app.updateFormTypePages)
                  GoRoute(
                    path: '${page.contextName}/:resource_id',
                    builder: (context, state) {
                      final String projectId =
                          state.pathParameters['project_id']!;
                      final String resourceId =
                          state.pathParameters['resource_id']!;
                      return active_resource.ActiveResourceUpdateFormPage(
                        projectId: projectId,
                        pageComponent: page,
                        resourceId: resourceId,
                        onRouteListView: ({
                          required contextName,
                        }) {
                          if (contextName == null) return;
                          final String projectId =
                              state.pathParameters['project_id']!;
                          final path = '/projects/$projectId/$contextName';
                          context.go(path, extra: {
                            'set_state': true,
                          });
                        },
                      );
                    },
                  ),
                for (final page in app.detailTypePages)
                  GoRoute(
                    path: '${page.contextName}/:resource_id',
                    builder: (context, state) {
                      final String resourceId =
                          state.pathParameters['resource_id']!;
                      return active_resource.ActiveResourceDetailPage(
                        pageComponent: page,
                        resourceId: resourceId,
                        onRouteUpdateForm: ({
                          required activeResourceId,
                          required contextName,
                        }) {
                          if (contextName == null) return;
                          final String projectId =
                              state.pathParameters['project_id']!;
                          final path =
                              '/projects/$projectId/$contextName/$activeResourceId';
                          context.push(path);
                        },
                      );
                    },
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ScaffoldWithNavBar extends StatelessWidget {
  /// Constructs an [ScaffoldWithNavBar].
  const ScaffoldWithNavBar({
    required this.navigationShell,
    required this.children,
    Key? key,
  }) : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  /// Body, i.e. the container for the branch Navigators.
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Section A'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Section B'),
          BottomNavigationBarItem(icon: Icon(Icons.tab), label: 'Section C'),
        ],
        currentIndex: navigationShell.currentIndex,
        onTap: (int tappedIndex) => navigationShell.goBranch(tappedIndex),
      ),
      tabBuilder: (BuildContext context, int index) {
        return children[index];
      },
    );
  }
}
