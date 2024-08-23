import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class SigninFormView extends StatelessWidget {
  const SigninFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Text(
          'Welcome! Please Sign In',
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
              // errorText: errorText,
              decoration: InputDecoration(
                hintText: 'Enter your username',
              ),
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
              decoration: InputDecoration(
                hintText: 'Enter your password',
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
        SizedBox(height: 16),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final signinSubmit = ref.read(signinSubmitProvider.notifier);
            final signinSubmitStatus = ref.watch(signinSubmitProvider);
            final form = ref.watch(signinInputProvider);

            return Visibility(
              visible: !signinSubmitStatus.isLoading,
              replacement: CircularProgressIndicator(),
              child: ElevatedButton(
                child: const Text('Sign In'),
                onPressed: () {
                  signinSubmit.submit(form: form);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
