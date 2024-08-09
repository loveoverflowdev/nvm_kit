import 'package:flutter/material.dart';

import 'common/common.dart' show ClearButton;

class UIPasswordInput extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? errorText;
  final String? initialText;

  const UIPasswordInput({
    super.key,
    this.onChanged,
    this.errorText,
    this.initialText,
  });

  @override
  State<UIPasswordInput> createState() => _UIPasswordInputState();
}

class _UIPasswordInputState extends State<UIPasswordInput> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(
      text: widget.initialText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: _textEditingController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: ClearButton(controller: _textEditingController),
        labelText: 'Password',
        hintText: 'Input password ...',
        helperText: 'supporting text',
        errorText: widget.errorText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
