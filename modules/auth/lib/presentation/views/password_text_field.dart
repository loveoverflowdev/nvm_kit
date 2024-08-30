import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final String? errorText;
  final void Function(String) onChanged;

  const PasswordTextField({
    super.key,
    required this.hintText,
    required this.errorText,
    required this.onChanged,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        errorText: widget.errorText,
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText; // Toggle the obscureText state
            });
          },
        ),
        // suffixIconConstraints: BoxConstraints(
        //   minHeight: 32,
        //   minWidth: 32,
        // ),
      ),
      onChanged: widget.onChanged,
      
    );
  }
}
