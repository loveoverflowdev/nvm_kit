import 'package:flutter/material.dart';
import 'package:nvm_ui_component/nvm_ui_component.dart';

class RegisterFormView extends StatelessWidget {
  const RegisterFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        UIRegisterHeadline(),
        const SizedBox(height: 16),
        UIUsernameInput(),
        const SizedBox(height: 8),
        UIPasswordInput(),
        const SizedBox(height: 8),
        UIRememberMeButton(),
        const SizedBox(height: 16),
        UIRegisterButton(),
      ],
    );
  }
}
