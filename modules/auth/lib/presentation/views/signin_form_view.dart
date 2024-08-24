import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';

import '../providers.dart';

class SigninFormView extends StatelessWidget {
  const SigninFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        Text(
          'Welcome! Please Sign In to NVM',
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final errorText = ref.watch(
              signinInputProvider.select(
                (form) => form.username.displayError?.message,
              ),
            );
            return TextField(
              decoration: InputDecoration(
                hintText: 'Enter your username',
                errorText: errorText,
              ),
              onChanged: (value) {
                ref.read(signinInputProvider.notifier).changeUsername(value);
              },
            );
          },
        ),
        const SizedBox(height: AppSpacing.md),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final errorText = ref.watch(
              signinInputProvider.select(
                (form) => form.password.displayError?.message,
              ),
            );
            return TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
                errorText: errorText,
              ),
              onChanged: (value) {
                ref.read(signinInputProvider.notifier).changePassword(value);
              },
            );
          },
        ),
        const SizedBox(height: 8),
        // Placeholder(
        //   child: Text('remember button'),
        // ),
        // UIRememberMeButton(
        //   onChanged: (value) {},
        // ),
        const SizedBox(height: AppSpacing.md),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final signinSubmitStatus = ref.watch(signinSubmitProvider);
            final signinInput = ref.read(signinInputProvider.notifier);
            final form = ref.watch(signinInputProvider);

            return Visibility(
              visible: !signinSubmitStatus.isLoading,
              replacement: const AppCircularLoadingWidget(),
              child: ElevatedButton(
                child: const Text('Sign In'),
                onPressed: () {
                  if (signinInput.isValid) {
                    ref.read(signinSubmitProvider.notifier).submit(form: form);
                  } else {
                    signinInput.makeDirty();
                  }
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
