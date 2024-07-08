import 'package:flutter/material.dart';
import 'package:ui_view/ui_view.dart';

class SigninView extends StatelessWidget {
  const SigninView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        UILoginHeadline(),
        const SizedBox(height: 16),
        UIUsernameInput(),
        const SizedBox(height: 8),
        UIPasswordInput(),
        const SizedBox(height: 8),
        UIRememberMeButton(),
        const SizedBox(height: 16),
        UILoginButton(),
      ],
    );
  }
}
