import 'package:flutter/material.dart';

class UIRegisterHeadline extends StatelessWidget {
  const UIRegisterHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Register',
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
