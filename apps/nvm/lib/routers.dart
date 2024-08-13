import 'package:go_router/go_router.dart';

import 'package:auth/auth.dart';
import 'package:workspace/workspace.dart';
import 'package:auth/auth.dart';
import 'package:auth/auth.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SigninPage(title: 'Sign In'),
    ),
  ],
);
