import 'package:active_resource/active_resource.dart';
import 'package:active_resource/domain/entities/active_input_field.dart';
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
          final List<ActiveInputField> activeFields = formInputFields.map(
            (field) {
              // TODO: combined two types of input fields
              return ActiveInputField(
                key: '',
                title: '',
                placeholder: '',
                description: '',
                dataType: field,
              );
            },
          ).toList();
          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
            ).copyWith(
              bottom: AppSpacing.lg,
            ),
            children: [
              for (final field in data.fields)
                Padding(
                  padding: const EdgeInsets.only(top: AppSpacing.md),
                  child: ActiveInputFieldWidget(
                    field: field,
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
}
