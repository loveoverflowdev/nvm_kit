import 'package:flutter/material.dart';

import 'common/common.dart' show ClearButton;

class UIPasswordInput extends StatefulWidget {
  const UIPasswordInput({super.key});

  @override
  State<UIPasswordInput> createState() => _UIPasswordInputState();
}

class _UIPasswordInputState extends State<UIPasswordInput> {
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
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: ClearButton(controller: _textEditingController),
        labelText: 'Password',
        hintText: 'Input password ...',
        helperText: 'supporting text',
        border: const OutlineInputBorder(),
      ),
    );
  }
}
