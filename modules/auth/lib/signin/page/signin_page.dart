import 'package:flutter/material.dart';

import 'signin_view.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login In Page'),
      ),
      body: const SigninView(),
    );
  }
}
