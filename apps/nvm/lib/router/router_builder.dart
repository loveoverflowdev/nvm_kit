import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/home.dart';
import 'package:template_parser/template_parser.dart';
import 'package:auth/auth.dart';
import 'package:workspace/workspace.dart';
import 'package:auth/auth.dart';
import 'package:auth/auth.dart';

import 'route_path.dart';

class RouterBuilder {
  final TemplateComponent template;

  RouterBuilder({
    required this.template,
  });

  GoRouter build() {
    return GoRouter(
      routes: [
        GoRoute(
          path: RoutePaths.signin.name,
          builder: (context, state) => const SigninPage(
            title: 'Sign In',
          ),
        ),
        GoRoute(
          path: RoutePaths.home.name,
          builder: (context, state) => HomePage(
            template: template,
          ),
        ),
      ],
    );
  }
}
