import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '_asterisk_icon.dart';

class ShortTextInputField extends StatefulWidget {
  final bool isRequiredIconVisible;
  final String labeltext;
  final String hintText;
  final String? initialValue;
  final void Function(String) onChanged;

  const ShortTextInputField({
    super.key,
    required this.labeltext,
    required this.hintText,
    required this.onChanged,
    this.initialValue,
    this.isRequiredIconVisible = false,
  });

  @override
  State<ShortTextInputField> createState() => _ShortTextInputFieldState();
}

class _ShortTextInputFieldState extends State<ShortTextInputField> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(
      text: widget.initialValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 50,
      controller: _textEditingController,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        label: Row(
          children: [
            Text(widget.labeltext),
            if (widget.isRequiredIconVisible) ...[
              const SizedBox(width: AppSpacing.xs),
              const AsteriskIcon(),
            ],
          ],
        ),
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: () {
            _textEditingController.clear();
            widget.onChanged('');
          },
          icon: const Icon(Icons.clear),
        ),
      ),
    );
  }
}
