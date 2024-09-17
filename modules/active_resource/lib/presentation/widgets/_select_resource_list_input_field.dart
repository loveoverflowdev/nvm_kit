import 'package:app_ui/app_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart' show ActiveCollectionComponent, ActiveTileComponent;


import '../views.dart';

class SelectResourceListInputField extends StatelessWidget {
  final String valueActiveStructureId;
  final String labeltext;
  final String titleKey;
  final String? subtitleKey;

  const SelectResourceListInputField({
    super.key,
    required this.valueActiveStructureId,
    required this.labeltext,
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
            return ActiveResourceCollectionView(
              collectionComponent: ActiveCollectionComponent(
                createFormContextName: null,
                detailContextName: null,
                tile: ActiveTileComponent(
                  activeStructureCode: '',
                  titleKey: '',
                  subtitleKey: '',
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
