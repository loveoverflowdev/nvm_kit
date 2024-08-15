import 'package:active_resource/active_resource.dart';
import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/app.dart';
import 'package:template_parser/template_parser.dart';

import 'route_path.dart';

class RouterBuilder {
  final TemplateComponent template;

  RouterBuilder({
    required this.template,
  });

  GoRouter build() {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          redirect: (context, state) {
            return '/${template.apps.first.appCode}';
          },
        ),
        GoRoute(
          path: '/${RoutePaths.signin.name}',
          builder: (context, state) => const SigninPage(
            title: 'Sign In',
          ),
          redirect: (context, state) {
            return '/${template.apps.first.appCode}';
          },
        ),
        for (final app in template.apps)
          GoRoute(
            path: '/${app.appCode}',
            redirect: (context, state) {
              print(state.fullPath);
              debugPrint('-- redirect ${app.pages.first.contextName}');
              return '/${app.appCode}/${app.pages.first.contextName}';
            },
            routes: [
              ShellRoute(
                builder: (context, state, child) => AppScaffold(
                  activeResourceScaffoldBody: child,
                  app: app,
                ),
                routes: [
                  for (final page in app.pages)
                    GoRoute(
                      path: page.contextName,
                      builder: (context, state) => Scaffold(
                        appBar: AppBar(
                          title: Text(page.title),
                        ),
                        body: const ActiveResourceListView(),
                      ),
                    ),
                ],
              ),
            ],
          )
        // for (final app in template.apps)
        //   GoRoute(
        //     path: '/${app.appCode}',
        //     builder: (context, state) => AppScaffold(
        //       app: app,
        //     ),
        //     routes: [
        //       for (final page in app.pages)
        //         GoRoute(
        //           path: page.contextName,
        //           builder: (context, state) => Scaffold(
        //             appBar: AppBar(
        //               title: Text(page.title),
        //             ),
        //             body: const ActiveResourceListView(),
        //           ),
        //         ),
        //       // TODO: ShellRoute
        //     ],
        //   ),
      ],
    );
  }
}
