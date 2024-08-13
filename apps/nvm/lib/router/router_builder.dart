import 'package:go_router/go_router.dart';

import 'package:template_parser/template_parser.dart';
import 'package:auth/auth.dart';
import 'package:workspace/workspace.dart';
import 'package:auth/auth.dart';
import 'package:auth/auth.dart';

enum _RoutePath {
  signin,
  workspace,
  project,
  notification,
  active_resource
}

class RouterBuilder {
  final TemplateComponent template;

  RouterBuilder({
    required this.template,
  });

  GoRouter build() {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => SigninPage(title: 'Sign In',),
        ),
      ],
    );
  }
}
