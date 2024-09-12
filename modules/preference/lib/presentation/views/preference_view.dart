import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class PreferenceView extends StatelessWidget {
  const PreferenceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        UserAvatar(),
        
        ListTile(
          title: const Text('Sign out'),
          trailing: const Icon(Icons.logout),
          onTap: () {

          },
        )
      ],
    );
  }
}
