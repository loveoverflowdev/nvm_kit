import 'package:project/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../project_repository_provider.dart';

part 'project_submit_provider.g.dart';

typedef ProjectSubmitState = AsyncValue<Project?>;

@riverpod
class ProjectSubmit extends _$ProjectSubmit {
  @override
  ProjectSubmitState build() => const ProjectSubmitState.data(null);

  void submit({
    required ProjectForm form,
  }) {
    state = const AsyncValue.loading();

    createProjectTask(
      form: form,
    ).match(
      (failure) {
        state = ProjectSubmitState.error(
          failure,
          failure.stackTrace ?? StackTrace.current,
        );
      },
      (_) {
        state = const ProjectSubmitState.data(null);
      },
    ).run(
      ref.read(projectRepositoryProvider),
    );
  }
}
