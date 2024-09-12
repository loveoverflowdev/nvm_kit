import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class ProjectSubmitFormView extends StatelessWidget {
  const ProjectSubmitFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(AppSpacing.md),
      ),
      child: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.lg
        ),
        children: [
          Consumer(
            builder: (_, WidgetRef ref, __) {
              final errorText = ref.watch(projectInputProvider.select(
                (value) => value.name.displayError?.errorText,
              ));
              return TextField(
                onChanged: (value) => ref.read(projectInputProvider.notifier).changeName(value),
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter project name',
                  errorText: errorText,
                ),
              );
            },
          ),
          const SizedBox(height: AppSpacing.lg),
          Consumer(
            builder: (_, WidgetRef ref, __) {
              final errorText = ref.watch(projectInputProvider.select(
                (value) => value.name.displayError?.errorText,
              ));
              return TextField(
                onChanged: (value) => ref.read(projectInputProvider.notifier).changeDescription(value),
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter project description',
                  errorText: errorText,
                ),
              );
            },
          ),
          const SizedBox(height: AppSpacing.lg),
          Consumer(
            builder: (_, WidgetRef ref, __) {
              final submitStatus = ref.watch(
                projectSubmitProvider,
              );

              ref.listen(
                projectSubmitProvider,
                  (previous, current) {
                    if (current.hasValue) {
                      Navigator.pop(context, true);
                    }
                },
              );
              return Visibility(
                visible: !submitStatus.isLoading,
                replacement: const AppCircularLoadingWidget(),
                child: Consumer(
                  builder: (_, WidgetRef ref, __) {
                    return ElevatedButton(
                      onPressed: () {
                        final projectInput = ref.read(projectInputProvider.notifier);
                        if (projectInput.isValid) {
                          final form = projectInput.getForm();
                          ref.read(projectSubmitProvider.notifier).submit(form: form);
                        } else {
                          projectInput.makeDirty();
                        }
                      },
                      child: const Text('Submit'),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
