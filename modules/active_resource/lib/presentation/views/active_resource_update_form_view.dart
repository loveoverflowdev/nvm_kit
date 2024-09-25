import 'package:active_resource/domain.dart';
import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_parser/template_parser.dart' as template;
import 'package:template_parser/template_parser.dart';
import '../providers.dart';
import '../widgets.dart';

class ActiveResourceUpdateFormView extends ConsumerStatefulWidget {
  final String resourceId;
  final String projectId;
  final template.ActiveUpdateFormComponent formComponent;

  final void Function({
    required String? contextName,
  })? onRouteListView;

  const ActiveResourceUpdateFormView({
    super.key,
    required this.projectId,
    required this.resourceId,
    required this.formComponent,
    required this.onRouteListView,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceUpdateFormViewState();
}

class _ActiveResourceUpdateFormViewState
    extends ConsumerState<ActiveResourceUpdateFormView> {
  late final ActiveResourceForm _form;
  late final ActiveResourceByStructureCodeProvider _activeResourceByStructureCodeProvider;

  List<ActiveInputFieldComponent> get _formInputFields => widget.formComponent.inputFields;

  @override
  void initState() {
    super.initState();
    _form = ActiveResourceForm(
      projectId: widget.projectId,
    );

    _activeResourceByStructureCodeProvider = activeResourceByStructureCodeProvider(
      widget.formComponent.activeStructureCode,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(
            _activeResourceByStructureCodeProvider.notifier,
          )
          .loadActiveResource(id: widget.resourceId, requestField: _parseRequestField());
    });
  }

  String _parseRequestField() {
    return RequestField.children([
      RequestField.name('liveFeatures'),
      RequestField.name('id'),
      RequestField(name: 'liveAttributes', children: [
        for (final field in _formInputFields)
          RequestField.name(field.fieldCode),
      ]),
    ]).build();
  }

  void _submissionListener(AsyncValue<void>? previous, AsyncValue<void> next) {
    if (next.hasError) {
      return showScaffoldMessage(
        context,
        next.error?.toString() ?? 'Error',
      );
    }

    if (next.hasValue) {
      // widget.onRouteListView?.call(
      //   contextName: widget.formComponent.listViewContextName,
      // );

      return showScaffoldMessage(
        context,
        'New Resource Created',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    ;
    final activeStructureResult = ref.watch(
      activeStructureByCodeProvider(
        widget.formComponent.activeStructureCode,
      ),
    );

    final initialActiveResourceResult = ref.watch(
      _activeResourceByStructureCodeProvider,
    );


    return Container(
      margin: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(AppSpacing.md),
      ),
      child: activeStructureResult.when(
        data: (activeStructure) {

          return initialActiveResourceResult.when(
            data: (initialActiveResource) {
              final activeInputFieldSpecifications =
                  _combinedToGetInputFieldSpecifications(
                inputFieldComponents: _formInputFields,
                activeFieldStructures: activeStructure.fields,
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
                        initialValue: initialActiveResource?.liveAttributes[specification.key] ?? '',
                        specification: specification,
                        onSelected: (value) {
                          _form.setAttribute(key: specification.key, value: value);
                        },
                      ),
                    ),
                  //

                  const SizedBox(
                    height: AppSpacing.lg,
                  ),

                  ..._buildAddonInputFields(activeStructure),
                  //
                  const Divider(),
                  Consumer(
                    builder: (_, WidgetRef ref, __) {
                      final submitProvider = activeResourceSubmitProvider(
                        activeStructureCode: activeStructure.code,
                        key:
                            'create_resource@${widget.projectId}@${widget.formComponent.activeStructureCode}',
                      );

                      ref.listen(
                        submitProvider,
                        _submissionListener,
                      );

                      final submitStatus = ref.watch(submitProvider);

                      if (submitStatus.isLoading) {
                        return const AppCircularLoadingWidget();
                      }
                      return ElevatedButton(
                        onPressed: () {
                          ref.read(submitProvider.notifier).submit(_form);
                        },
                        child: const Text('Submit'),
                      );
                    },
                  ),
                ],
              );
            }, 
            error: (error, stackTrace) => AppErrorWidget(
              error,
              stackTrace: stackTrace,
            ),
            loading: () => const AppCircularLoadingWidget(),
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

  List<Widget> _buildAddonInputFields(ActiveStructure activeStructure) {
    final roleBoardAddonType =
        activeStructure.getAddonTypeWhere((type) => type.isRolesBoard);
    final List<Widget> inputFields = [];

    ///
    roleBoardAddonType?.whenOrNull(rolesBoard: (configurations) {
      for (final configuration in configurations) {
        inputFields.add(
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.lg),
            child: RolesBoardInputField(
              onSelected: (rolesBoardSelection) {
                if (rolesBoardSelection == null) {
                  _form.setAddonAttribute(
                      key: configuration.fieldCode, value: null);
                } else {
                  _form.setAddonAttribute(
                      key: configuration.fieldCode,
                      value: rolesBoardSelection.toJson());
                }
              },
            ),
          ),
        );
      }
    });
    return inputFields;
  }

  List<ActiveInputFieldSpecification> _combinedToGetInputFieldSpecifications({
    required List<template.ActiveInputFieldComponent> inputFieldComponents,
    required List<ActiveFieldStructure> activeFieldStructures,
  }) {
    final List<ActiveInputFieldSpecification> activeFieldSpecifications =
        inputFieldComponents.map((fieldComponent) {
      return fieldComponent.when(
        primitive: (fieldCode, initialValue) {
          final index =
              activeFieldStructures.indexWhere((e) => e.key == fieldCode);
          if (index == -1) {
            throw Exception(
                'ActiveInputFieldComponent code not found: $fieldCode');
          }
          final activeFieldStructure = activeFieldStructures[index];
          final activeInputFieldDataType = switch (activeFieldStructure.type) {
            ActiveFieldDataType.shortText =>
              ActiveInputFieldDataType.shortText(),
            ActiveFieldDataType.paragraph =>
              ActiveInputFieldDataType.paragraph(),
            ActiveFieldDataType.date => ActiveInputFieldDataType.date(),
            ActiveFieldDataType.dateTime => ActiveInputFieldDataType.dateTime(),
            ActiveFieldDataType.integer => ActiveInputFieldDataType.integer(),
            ActiveFieldDataType.numeric => ActiveInputFieldDataType.numeric(),
            ActiveFieldDataType.email => ActiveInputFieldDataType.email(),
            ActiveFieldDataType.url => ActiveInputFieldDataType.url(),
            ActiveFieldDataType.textList => ActiveInputFieldDataType.textList(),
            ActiveFieldDataType.binaryCheckbox =>
              ActiveInputFieldDataType.binaryCheckbox(),
            _ => throw UnimplementedError(),
          };
          // Temporily use title of structure
          return ActiveInputFieldSpecification(
            key: fieldCode,
            projectId: widget.projectId,
            title: activeFieldStructure.title,
            placeholder: activeFieldStructure.placeholder,
            description: activeFieldStructure.description,
            dataType: activeInputFieldDataType,
            isRequired: activeFieldStructure.isRequired,
          );
        },
        activeResourcesSelection:
            (fieldCode, activeStructureCode, titleKey, subtitleKey) {
          final index =
              activeFieldStructures.indexWhere((e) => e.key == fieldCode);
          if (index == -1) {
            throw Exception(
                'ActiveInputFieldComponent code not found: $fieldCode');
          }
          final activeFieldStructure = activeFieldStructures[index];
          final activeInputFieldDataType = switch (activeFieldStructure.type) {
            ActiveFieldDataType.multiActiveResourceCheckbox =>
              ActiveInputFieldDataType.multiActiveResourceCheckbox(
                activeStructureCode: activeStructureCode,
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
            ActiveFieldDataType.singleActiveResourceSelection =>
              ActiveInputFieldDataType.singleActiveResourceSelection(
                activeStructureCode: activeStructureCode,
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
            ActiveFieldDataType.multiResourceSelection =>
              ActiveInputFieldDataType.multiActiveResourceSelection(
                activeStructureCode: activeStructureCode,
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
            _ => throw UnimplementedError(),
          };
          return ActiveInputFieldSpecification(
            projectId: widget.projectId,
            key: fieldCode,
            title: activeFieldStructure.title,
            placeholder: activeFieldStructure.placeholder,
            description: activeFieldStructure.description,
            dataType: activeInputFieldDataType,
            isRequired: activeFieldStructure.isRequired,
          );
        },
        usersSelection: (
          String fieldCode,
          String? avatarKey,
          String titleKey,
          String subtitleKey,
        ) {
          final index =
              activeFieldStructures.indexWhere((e) => e.key == fieldCode);
          if (index == -1) {
            throw Exception(
                'ActiveInputFieldComponent code not found: $fieldCode');
          }
          final activeFieldStructure = activeFieldStructures[index];
          final activeInputFieldDataType = switch (activeFieldStructure.type) {
            ActiveFieldDataType.singleUserSelection =>
              ActiveInputFieldDataType.singleUserSelection(
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
            ActiveFieldDataType.multiUserCheckbox =>
              ActiveInputFieldDataType.multiUserCheckbox(
                titleKey: titleKey,
              ),
            ActiveFieldDataType.multiUserSelection =>
              ActiveInputFieldDataType.multiUserSelection(
                titleKey: titleKey,
                subtitleKey: subtitleKey,
              ),
            _ => throw UnimplementedError(),
          };
          return ActiveInputFieldSpecification(
            projectId: widget.projectId,
            key: fieldCode,
            title: 'Users',
            placeholder: '',
            description: '',
            dataType: activeInputFieldDataType,
            isRequired: activeFieldStructure.isRequired,
          );
        },
      );
    }).toList();
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
