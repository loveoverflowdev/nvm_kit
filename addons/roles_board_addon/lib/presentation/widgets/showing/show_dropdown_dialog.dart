import 'package:flutter/material.dart';

Future<String?> showDropdownDialog(
  BuildContext context, {
  required String title,
  String? initialOption,
  required List<String> options,
  required String Function(String) optionLabelBuilder,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      String? tempSelectedValue;

      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: options.map((String option) {
                return CheckboxListTile(
                  value: option == tempSelectedValue,
                  title: Text(
                    optionLabelBuilder(option),
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onChanged: (bool? value) {
                    setState(() {
                      tempSelectedValue = option;
                    });
                  },
                );
              }).toList(),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(tempSelectedValue);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    },
  );
}
