import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '_active_resource_selection_list_view.dart';

class SingleResourceSelectionInputField extends ConsumerWidget {
  final String projectId;
  final String activeStructureCode;
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;

  const SingleResourceSelectionInputField({
    super.key,
    required this.activeStructureCode,
    required this.labeltext, 
    required this.titleKey,
    required this.projectId, 
    this.subtitleKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final activeStructureList = ref.watch(activeStructureListProvider);
    // return activeStructureList.when(
    //   data: data, 
    //   error: error, 
    //   loading: loading,
    // );
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        showAppModelBottomSheet(
          context: context,
          builder: (context) {
            return ActiveResourceSelectionListView(
              projectId: projectId,
              activeStructureCode: activeStructureCode,
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
