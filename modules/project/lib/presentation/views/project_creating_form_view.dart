import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class ProjectCreatingFormView extends StatelessWidget {
  const ProjectCreatingFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(AppSpacing.md),
      ),
      child: ListView(
        children: [
          
        ],
      ),
    );
  }
}
