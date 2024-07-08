import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nvm_ui_component/nvm_ui_component.dart';
import 'package:nvm_view/functions/functions.dart';

import '../providers/providers.dart';

class SigninFormView extends StatelessWidget {
  const SigninFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        const UISigninHeadline(),
        const SizedBox(height: 16),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final errorText = ref.watch(
              signinInputProvider.select(
                (form) => form.username.displayError?.errorText,
              ),
            );
            return UIUsernameInput(
              errorText: errorText,
              onChanged: (value) {
                ref.read(signinInputProvider.notifier).changeUsername(value);
              },
            );
          },
        ),
        const SizedBox(height: 8),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final errorText = ref.watch(
              signinInputProvider.select(
                (form) => form.password.displayError?.errorText,
              ),
            );
            return UIPasswordInput(
              errorText: errorText,
              onChanged: (value) {
                ref.read(signinInputProvider.notifier).changePassword(value);
              },
            );
          },
        ),
        const SizedBox(height: 8),
        UIRememberMeButton(
          onChanged: (value) {},
        ),
        const SizedBox(height: 16),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final signinSumit = ref.read(signinSubmitProvider.notifier);
            final form = ref.watch(signinInputProvider);

            return UISigninButton(
              onPressed: () {
                signinSumit.submit(form: form);
              },
            );
          },
        ),
      ],
    );
  }
}
