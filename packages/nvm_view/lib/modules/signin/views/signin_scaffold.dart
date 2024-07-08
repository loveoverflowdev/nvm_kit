import 'package:flutter/material.dart';

import 'signin_form_view.dart';

class SigninScaffold extends StatelessWidget {
  const SigninScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signin Page'),
      ),
      body: SigninFormView(),
    );
  }
}
