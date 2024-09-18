import 'package:flutter/material.dart';

class ParagraphInputField extends StatelessWidget {
  final String labeltext;
  final String hintText;

  ParagraphInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
      ),
    );
  }
}
