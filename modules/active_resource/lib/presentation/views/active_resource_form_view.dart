import 'package:active_resource/active_resource.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../widgets.dart';

class ActiveResourceFormView extends ConsumerStatefulWidget {
  final template.ActiveFormComponent formComponent;

  const ActiveResourceFormView({
    super.key,
    required this.formComponent,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceFormViewState();
}

class _ActiveResourceFormViewState
    extends ConsumerState<ActiveResourceFormView> {
  @override
  Widget build(BuildContext context) {
    final activeStructure = ref.watch(
      activeStructureProvider(
        activeStructureCode: widget.formComponent.activeStructureCode,
      ),
    );
    // TODO: Improving combined two types of input fields
    final formInputFields = widget.formComponent.inputFields;
    return Container(
      margin: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(AppSpacing.md),
      ),
      child: activeStructure.when(
        data: (data) {
          final activeInputFieldSpecifications = _combinedToGetInputFieldSpecifications(
            inputFieldComponents: formInputFields, 
            activeFieldStructures: data.fields,
          );
          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
            ).copyWith(
              bottom: AppSpacing.lg,
            ),
            children: [
              for (final specification in activeInputFieldSpecifications)
                Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.md),
                  child: ActiveInputField(
                    specification: specification,
                  ),
                ),
              //
              const Divider(),
              ElevatedButton(
                onPressed: () {
                  // TODO: submit form
                },
                child: const Text('Submit'),
              ),
            ],
          );
        },
        error: (error, stackTrace) => AppErrorWidget(
          error,
          stackTrace: stackTrace,
        ),
        loading: () => const AppCircularLoadingWidget(),
      ),
    );
  }

  List<ActiveInputFieldSpecification> _combinedToGetInputFieldSpecifications({
    required List<template.ActiveInputFieldComponent> inputFieldComponents,
    required List<ActiveFieldStructure> activeFieldStructures,
  }) {
    final List<ActiveInputFieldSpecification> activeFieldSpecifications = inputFieldComponents.map(
      (fieldComponent) {
        return fieldComponent.when(
          primitive: (fieldCode, initialValue) {
            final index = activeFieldStructures.indexWhere((e) => e.key == fieldCode);
            if (index == -1) {
              throw Exception('ActiveInputFieldComponent code not found: $fieldCode');
            }
            final activeFieldStructure = activeFieldStructures[index];
            final activeInputFieldDataType = switch (activeFieldStructure.type) {
              ActiveFieldDataType.shortText => ActiveInputFieldDataType.shortText(),
              ActiveFieldDataType.paragraph => ActiveInputFieldDataType.paragraph(),
              ActiveFieldDataType.date => ActiveInputFieldDataType.date(),
              ActiveFieldDataType.dateTime => ActiveInputFieldDataType.dateTime(),
              ActiveFieldDataType.integer => ActiveInputFieldDataType.integer(),
              ActiveFieldDataType.numeric => ActiveInputFieldDataType.numeric(),
              ActiveFieldDataType.email => ActiveInputFieldDataType.email(),
              ActiveFieldDataType.url => ActiveInputFieldDataType.url(),
              ActiveFieldDataType.textList => ActiveInputFieldDataType.textList(),
              ActiveFieldDataType.binaryCheckbox => ActiveInputFieldDataType.binaryCheckbox(),
              ActiveFieldDataType.multiActiveResourceCheckbox => throw UnimplementedError(),
              ActiveFieldDataType.singleActiveResourceSelection => throw UnimplementedError(),
              ActiveFieldDataType.selectListLiveResource => throw UnimplementedError(),
              ActiveFieldDataType.singleUserSelection => throw UnimplementedError(),
              ActiveFieldDataType.multiUserSelection => throw UnimplementedError(),
              ActiveFieldDataType.multiUserCheckbox => throw UnimplementedError(),
              ActiveFieldDataType.unsupported => throw UnimplementedError(),
            };
            // Temporily use title of structure
            return ActiveInputFieldSpecification(
              key: fieldCode,
              title: activeFieldStructure.title,
              placeholder: activeFieldStructure.placeholder,
              description: activeFieldStructure.description,
              dataType: activeInputFieldDataType,
            );
          },
          resourcesSelection: (fieldCode, activeStructureCode, titleKey, subtitleKey) {
            final index = activeFieldStructures.indexWhere((e) => e.key == fieldCode);
            if (index == -1) {
              throw Exception('ActiveInputFieldComponent code not found: $fieldCode');
            }
            final activeFieldStructure = activeFieldStructures[index];
            final activeInputFieldDataType = switch (activeFieldStructure.type) {
              ActiveFieldDataType.shortText => throw UnimplementedError(),
              ActiveFieldDataType.paragraph => throw UnimplementedError(),
              ActiveFieldDataType.date => throw UnimplementedError(),
              ActiveFieldDataType.dateTime => throw UnimplementedError(),
              ActiveFieldDataType.integer => throw UnimplementedError(),
              ActiveFieldDataType.numeric => throw UnimplementedError(),
              ActiveFieldDataType.email => throw UnimplementedError(),
              ActiveFieldDataType.url => throw UnimplementedError(),
              ActiveFieldDataType.textList => throw UnimplementedError(),
              ActiveFieldDataType.binaryCheckbox => throw UnimplementedError(),
              ActiveFieldDataType.multiActiveResourceCheckbox => ActiveInputFieldDataType.multiActiveResourceCheckbox(
                activeStructureCode: activeStructureCode, 
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
              ActiveFieldDataType.singleActiveResourceSelection => ActiveInputFieldDataType.singleActiveResourceSelection(
                activeStructureCode: activeStructureCode, 
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
              ActiveFieldDataType.selectListLiveResource => ActiveInputFieldDataType.multiActiveResourceSelection(
                activeStructureCode: activeStructureCode, 
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
              ActiveFieldDataType.singleUserSelection => ActiveInputFieldDataType.singleUserSelection(
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
              ActiveFieldDataType.multiUserSelection => ActiveInputFieldDataType.singleActiveResourceSelection(
                activeStructureCode: activeStructureCode, 
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
              ActiveFieldDataType.multiUserCheckbox => ActiveInputFieldDataType.multiUserCheckbox(
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
              ActiveFieldDataType.unsupported => throw UnimplementedError(),
            };
            return ActiveInputFieldSpecification(
              key: fieldCode,
              title: activeFieldStructure.title,
              placeholder: activeFieldStructure.placeholder,
              description: activeFieldStructure.description,
              dataType: activeInputFieldDataType,
            );
          },
        );
      }
    ).toList();
    /*
    (field) {
        // TODO: Did Ignore error tolerant, improve it
        final index = activeFieldStructures.indexWhere((e) => e.key == fieldCode);
        final inputStructure = activeFieldStructures[index];
      },
      resourcesSelection: (String fieldCode, String activeStructureCode, String titleKey, String subtitleKey) {

      }
    */
    return activeFieldSpecifications;
  }
}
