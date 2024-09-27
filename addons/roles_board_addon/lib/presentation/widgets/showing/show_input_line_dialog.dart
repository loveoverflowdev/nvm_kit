import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// The returned value is already trimmed
Future<String?> showInputLineDialog(
  BuildContext context, {
  TextInputType? keyboardType,
  List<TextInputFormatter>? inputFormatters,
  required String title,
  required String hintText,
}) {
  final TextEditingController textFieldController = TextEditingController();

  return showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: TextField(
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          controller: textFieldController,
          decoration: InputDecoration(
            hintText: hintText,
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text('Submit'),
            onPressed: () {
              final value = textFieldController.text.trim();
              if (value.isNotEmpty) {
                Navigator.of(context).pop(
                  textFieldController.text.trim(),
                );
              }
            },
          ),
        ],
      );
    },
  );
}
