import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '_asterisk_icon.dart';

class ParagraphInputField extends StatelessWidget {
  final bool isRequiredIconVisible;
  final String labeltext;
  final String hintText;
  final void Function(String) onChanged;

  ParagraphInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
    required this.isRequiredIconVisible,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: TextFormField(
        onChanged: onChanged,
        expands: true,
        maxLines: null,
        maxLength: 500,
        decoration: InputDecoration(
          label: Row(
          children: [
            Text(labeltext),
              if (isRequiredIconVisible)
                ...[
                  const SizedBox(width: AppSpacing.xs),
                  AsteriskIcon(),  
                ],           
            ],
          ), 
          hintText: hintText,
        ),
      ),
    );
  }
}
