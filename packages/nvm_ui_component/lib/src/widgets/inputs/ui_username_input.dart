import 'package:flutter/material.dart';

import 'common/common.dart' show ClearButton;

class UIUsernameInput extends StatefulWidget {
  final void Function(String)? onChanged;
  final String? errorText;
  final String? initialText;

  const UIUsernameInput({
    super.key,
    this.onChanged,
    this.errorText,
    this.initialText,
  });

  @override
  State<UIUsernameInput> createState() => _UIUsernameInputState();
}

class _UIUsernameInputState extends State<UIUsernameInput> {
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
        prefixIcon: const Icon(Icons.person),
        suffixIcon: ClearButton(controller: _textEditingController),
        labelText: 'Username',
        hintText: 'Input username ...',
        helperText: 'supporting text',
        errorText: widget.errorText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
