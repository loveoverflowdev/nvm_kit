import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiUserInputField extends StatelessWidget {
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;
  final bool isRequiredIconVisible;
  
  final void Function(String) onChanged;

  const MultiUserInputField({
    super.key,
    this.isRequiredIconVisible = false,
    required this.labeltext,
    required this.titleKey,
    required this.onChanged,
    this.subtitleKey,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: IgnorePointer(
        child: TextField(
          decoration: InputDecoration(
            labelText: labeltext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.md),
            ),
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
