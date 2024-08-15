import 'package:flutter/material.dart';

class PreferenceScaffold extends StatelessWidget {
  const PreferenceScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: Placeholder(
        child: Text('Preference'),
      ),
    );
  }
}
