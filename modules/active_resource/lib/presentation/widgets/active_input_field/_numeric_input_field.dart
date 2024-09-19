import 'package:flutter/material.dart';

class NumericInputField extends StatelessWidget {
  final bool isRequiredIconVisible;
  final String labeltext;
  final String hintText;
  final void Function(num) onChanged;

  NumericInputField({
    super.key,
    required this.isRequiredIconVisible,
    required this.labeltext,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      /// TODO: //
      // onChanged: onChanged,
      keyboardType: TextInputType.number,
      // TODO: set range
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
      ),
    );
  }
}
