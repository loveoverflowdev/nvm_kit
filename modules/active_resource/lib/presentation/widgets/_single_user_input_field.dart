import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SingleUserInputField extends ConsumerStatefulWidget {
  const SingleUserInputField({
    super.key,
    required this.labeltext,
    required this.titleKey,
    this.subtitleKey,
  });

  final String labeltext;
  final String titleKey;
  final String? subtitleKey;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SingleUserInputFieldState();
}

class _SingleUserInputFieldState extends ConsumerState<SingleUserInputField> {

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: IgnorePointer(
        child: TextField(
          decoration: InputDecoration(
            labelText: widget.labeltext,
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
