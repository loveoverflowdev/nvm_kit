import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_parser/template_parser.dart' show ActiveCollectionComponent, ActiveTileComponent;

import '../providers.dart';
import '../views.dart';

class SelectOneResourceInputField extends ConsumerWidget {
  final String valueActiveStructureId;
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;

  const SelectOneResourceInputField({
    super.key,
    required this.valueActiveStructureId,
    required this.labeltext, 
    required this.titleKey, 
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
            // Refactor to its own list view
            return ActiveResourceCollectionView(
              collectionComponent: ActiveCollectionComponent(
                createFormContextName: null,
                detailContextName: null,
                tile: ActiveTileComponent(
                  activeStructureCode: '',
                  titleKey: titleKey,
                  subtitleKey: subtitleKey,
                ),
              ),
              onTapResource: (resourceId) {},
              projectId: '', // TODO:
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
