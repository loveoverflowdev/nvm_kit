import 'package:flutter/material.dart';

class NumericInputField extends StatelessWidget {
  final String labeltext;
  final String hintText;

  NumericInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      // TODO: set range
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
      ),
    );
  }
}
