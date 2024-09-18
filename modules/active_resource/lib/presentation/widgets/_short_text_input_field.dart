import 'package:flutter/material.dart';

class ShortTextInputField extends StatelessWidget {
  final String labeltext;
  final String hintText;
  final void Function(String) onChanged;

  const ShortTextInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 50,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
        // TODO: max chars
      ),
    );
  }
}
