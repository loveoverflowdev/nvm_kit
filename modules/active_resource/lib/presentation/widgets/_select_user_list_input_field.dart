import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectUserListInputField extends StatelessWidget {
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;

  const SelectUserListInputField({
    super.key,
    required this.labeltext,
    required this.titleKey,
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
