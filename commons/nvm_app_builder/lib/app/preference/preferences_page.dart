import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auth/auth.dart' as auth;
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
      body: Consumer(
        builder: (_, WidgetRef ref, __) {
          return preference.PreferenceView(
            onSignoutPressed: () {
              ref.read(auth.signoutProvider.notifier).signOut();
            },
          );
        },
      ),
    );
  }
}
