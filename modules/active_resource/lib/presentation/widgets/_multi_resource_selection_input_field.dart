import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '_active_resource_selection_list_view.dart';

class SelectResourceListInputField extends StatelessWidget {
  final String projectId;
  final String activeStructureCode;
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;

  const SelectResourceListInputField({
    super.key,
    //
    required this.activeStructureCode,
    required this.labeltext,
    required this.projectId,
    required this.titleKey,
    this.subtitleKey,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showAppModelBottomSheet(
          context: context,
          builder: (context) {
            return ActiveResourceSelectionListView(
              projectId: projectId,
              activeStructureCode: valueActiveStructureId,
              titleKey: titleKey,
              subtitleKey: subtitleKey,
            );
          },
        );
      },
      child: IgnorePointer(
        child: TextField(
          decoration: InputDecoration(
            labelText: labeltext,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSpacing.md),
            ),
            suffixIcon: const Icon(
              Icons.arrow_drop_down,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}
