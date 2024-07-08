import 'package:flutter/material.dart'
    show
        StatelessWidget,
        TextEditingController,
        IconButton,
        Icon,
        Icons,
        BuildContext,
        Widget;

class ClearButton extends StatelessWidget {
  const ClearButton({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) => IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => controller.clear(),
      );
}
