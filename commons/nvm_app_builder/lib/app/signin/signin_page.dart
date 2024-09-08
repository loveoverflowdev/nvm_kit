import 'package:auth/auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:app_ui/app_ui.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(
        child: const auth.SigninFormView(),
        builder: (_, WidgetRef ref, child) {
          ref.listen(auth.signinSubmitProvider, (previous, current) {
            current.when(
              data: (credentials) {
                context.go('/workspaces');
              },
              error: (error, _) {
                showScaffoldMessage(context, error.toString());
              },
              loading: () {},
            );
          });
          return child!;
        },
      ),
    );
  }
}
