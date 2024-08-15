import 'package:flutter/material.dart';

class PreferenceScaffold extends StatelessWidget {
  const PreferenceScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Placeholder(
        child: Text('Preference'),
      ),
    );
  }
}
