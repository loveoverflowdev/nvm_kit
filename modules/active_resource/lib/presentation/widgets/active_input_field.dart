import 'package:active_resource/domain.dart';
import 'package:flutter/material.dart';

class ActiveInputField extends StatelessWidget {
  final ActiveField field;
  const ActiveInputField({super.key, required this.field,});

  @override
  Widget build(BuildContext context) {
    
    return TextField(
      decoration: InputDecoration(
        labelText: field.title,
      ),
    );
  }
}
