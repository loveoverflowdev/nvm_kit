import 'package:flutter/material.dart';

import 'signin_form_view.dart';

class SigninPage extends StatelessWidget {
  final String title;

  const SigninPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
      ),
      body: SigninFormView(),
    );
  }
}
