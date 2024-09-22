import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:roles_board_addon/domain.dart';

import '_roles_board_list_view.dart';

class RolesBoardInputField extends StatelessWidget {
  final void Function(RolesBoardSelection?)? onSelected;

  const RolesBoardInputField({
    super.key,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSpacing.md),
        onTap: () {
          showAppModelBottomSheet(
            context: context,
            builder: (context) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.clear),
                ),
                title: const Text('Select a roles board'),
              ),
              body: RolesBoardListView(
                onSelected: onSelected,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSpacing.md),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppSpacing.lg,
              horizontal: AppSpacing.md,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select a roles board',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
