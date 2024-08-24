import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/app.dart';
import 'package:nvm/router/navigation_guard.dart';
import 'package:template_parser/template_parser.dart';

final class RouterBuilder {
  final NavigationGuard navigationGuard;
  final TemplateComponent template;

  RouterBuilder({
    required this.template,
    required this.navigationGuard,
  });

  GoRouter build() {
    // template.app.pages.sort((a, b) => a.order.compareTo(b.order));
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
          },
        ),
        GoRoute(
          path: '/workspaces',
          builder: (context, state) => const WorkspacesPage(),
          redirect: (context, state) async {
            if (await navigationGuard.didSelectWorkspace) {
              return '/';
            }
          },
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
                Destination(
                  label: 'Project',
                  selectedIcon: Icons.work,
                  unselectedIcon: Icons.work_outlined,
                ),
                Destination(
                  label: 'Notification',
                  selectedIcon: Icons.notifications,
                  unselectedIcon: Icons.notifications_outlined,
                ),
                Destination(
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
                  path: 'projects/:id',
                  builder: (_, state) => ProjectPage(
                    id: state.pathParameters['id']!,
                  ),
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

  // GoRouter build() {
  //   return GoRouter(
  //     initialLocation: '/${RoutePaths.signin.name}',
  //     routes: [
  //       GoRoute(
  //         path: '/${RoutePaths.signin.name}',
  //         builder: (context, state) => const SigninPage(
  //           title: 'Sign In',
  //         ),
  //         // redirect: (context, state) {
  //         //   return '/';
  //         // },
  //       ),
  //       // GoRoute(
  //       //   path: '/',
  //       //   redirect: (context, state) {
  //       //     return '/${template.app.pages.first.contextName}';
  //       //   },
  //       // ),
  //       ShellRoute(
  //         builder: (context, state, child) => AppScaffold(
  //           activeResourceScaffoldBody: child,
  //           app: template.app,
  //         ),
  //         routes: [
  //           for (final page in template.app.pages)
  //             GoRoute(
  //               path: '/${page.contextName}',
  //               builder: (context, state) => Scaffold(
  //                 appBar: AppBar(
  //                   title: Text(page.title),
  //                 ),
  //                 body: const ActiveResourceListView(),
  //               ),
  //             ),
  //         ],
  //       )

  //       // for (final app in template.apps)
  //       //   GoRoute(
  //       //     path: '/${app.appCode}',
  //       //     builder: (context, state) => AppScaffold(
  //       //       app: app,
  //       //     ),
  //       //     routes: [
  //       //       for (final page in app.pages)
  //       //         GoRoute(
  //       //           path: page.contextName,
  //       //           builder: (context, state) => Scaffold(
  //       //             appBar: AppBar(
  //       //               title: Text(page.title),
  //       //             ),
  //       //             body: const ActiveResourceListView(),
  //       //           ),
  //       //         ),
  //       //       // TODO: ShellRoute
  //       //     ],
  //       //   ),
  //     ],
  //   );
  // }
}
