import 'package:flutter/material.dart';

class UISigninButton extends StatelessWidget {
  final void Function()? onPressed;

  const UISigninButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: const Text('Signin'),
    );
  }
}
