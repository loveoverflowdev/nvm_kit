import 'package:flutter/material.dart';

class PreferencesPage extends StatelessWidget {
  // final String userId;
  const PreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ListTile(),
        ],
      ),
    );
  }
}
