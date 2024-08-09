import 'package:flutter/material.dart';

class UIRememberMeButton extends StatefulWidget {
  final void Function(bool)? onChanged;

  const UIRememberMeButton({
    super.key,
    this.onChanged,
  });

  @override
  State<UIRememberMeButton> createState() => _UIRememberMeButtonState();
}

class _UIRememberMeButtonState extends State<UIRememberMeButton> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = false;
  }

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: _isChecked,
      title: const Text('Remember me'),
      onChanged: (value) {
        setState(() {
          _isChecked = !_isChecked;
        });

        widget.onChanged?.call(_isChecked);
      },
    );
  }
}
