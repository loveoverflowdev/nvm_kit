import 'package:project/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../project_repository_provider.dart';

part 'project_submit_provider.g.dart';

typedef ProjectFormSubmitState = AsyncValue<Project?>;

@riverpod
class ProjectFormSubmit extends _$ProjectFormSubmit {
  @override
  ProjectFormSubmitState build() => const ProjectFormSubmitState.data(null);

  void submit({
    required ProjectForm form,
  }) {
    state = const AsyncValue.loading();

    createProject(
      form: form,
      workspaceId: '',
    ).match(
      (failure) {
        state = ProjectFormSubmitState.error(
          failure,
          StackTrace.current,
        );
      },
      (response) {
        state = ProjectFormSubmitState.data(response);
      },
    ).run(
      ref.read(projectRepositoryProvider),
    );
  }
}
