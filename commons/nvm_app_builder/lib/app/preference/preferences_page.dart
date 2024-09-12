import 'package:flutter/material.dart';
import 'package:preference/preference.dart' as preference;

class PreferencesPage extends StatelessWidget {
  // final String userId;
  const PreferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preferences'),
      ),
      body: preference.PreferenceView(),
    );
  }
}
