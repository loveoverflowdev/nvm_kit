import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class SigninFormView extends StatelessWidget {
  const SigninFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Placeholder(
          child: Text('Signin Form Headlines'),
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
              // errorText: errorText,
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
                (form) => form.password.displayError?.message,
              ),
            );
            return TextField(
              // errorText: errorText,
              onChanged: (value) {
                ref.read(signinInputProvider.notifier).changePassword(value);
              },
            );
          },
        ),
        const SizedBox(height: 8),
        Placeholder(
          child: Text('remember button'),
        ),
        // UIRememberMeButton(
        //   onChanged: (value) {},
        // ),
        SizedBox(height: 16),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final signinSumit = ref.read(signinSubmitProvider.notifier);
            final form = ref.watch(signinInputProvider);

            return TextButton(
              child: const Text('Sign In'),
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
