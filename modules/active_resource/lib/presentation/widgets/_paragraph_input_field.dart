import 'package:flutter/material.dart';

class ParagraphInputField extends StatelessWidget {
  final String labeltext;
  final String hintText;
  final void Function(String) onChanged;

  ParagraphInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labeltext,
        hintText: hintText,
      ),
    );
  }
}
