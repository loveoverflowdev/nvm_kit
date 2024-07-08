import 'package:flutter/material.dart';

class UISigninHeadline extends StatelessWidget {
  const UISigninHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Signin',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
