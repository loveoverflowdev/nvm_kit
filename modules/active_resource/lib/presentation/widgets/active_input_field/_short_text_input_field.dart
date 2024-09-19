import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '_asterisk_icon.dart';

class ShortTextInputField extends StatelessWidget {
  final bool isRequiredIconVisible;
  final String labeltext;
  final String hintText;
  final void Function(String) onChanged;

  const ShortTextInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
    required this.onChanged,
    this.isRequiredIconVisible = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 50,
      onChanged: onChanged,
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
    );
  }
}

