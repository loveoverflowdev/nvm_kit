import 'package:flutter/material.dart';

import 'common/common.dart' show ClearButton;

class UIUsernameInput extends StatefulWidget {
  const UIUsernameInput({super.key});

  @override
  State<UIUsernameInput> createState() => _UIUsernameInputState();
}

class _UIUsernameInputState extends State<UIUsernameInput> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.person),
        suffixIcon: ClearButton(controller: _textEditingController),
        labelText: 'Username',
        hintText: 'Input username ...',
        helperText: 'supporting text',
        border: const OutlineInputBorder(),
      ),
    );
  }
}
