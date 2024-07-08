import 'package:nvm_view/functions/functions.dart'
    show
        ProjectBlock,
        ProjectDescription,
        ProjectForm,
        ProjectName,
        createProjectFunction,
        getProjectListFunction;

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

typedef ProjectListState = AsyncValue<List<ProjectBlock>>;

@riverpod
class ProjectList extends _$ProjectList {
  @override
  ProjectListState build() => ProjectListState.data(List.empty());

  void loadProjectList() {
    state = const AsyncValue.loading();

    getProjectListFunction().match((failure) {
      state = ProjectListState.error(
        failure.error,
        failure.stackTrace,
      );
    }, (success) {
      state = ProjectListState.data(success);
    });
  }
}

@riverpod
class ProjectInput extends _$ProjectInput {
  @override
  ProjectForm build() => ProjectForm.pure();

  void changeName(String newValue) {
    state = state.copyWith(
      name: ProjectName.dirty(value: newValue),
    );
  }

  void changeDescription(String newValue) {
    state = state.copyWith(
      description: ProjectDescription.dirty(value: newValue),
    );
  }
}

typedef ProjectFormSubmitState = AsyncValue<ProjectBlock?>;

@riverpod
class ProjectFormSubmit extends _$ProjectFormSubmit {
  @override
  ProjectFormSubmitState build() => const ProjectFormSubmitState.data(null);

  void submit({
    required ProjectForm form,
  }) {
    state = const AsyncValue.loading();

    createProjectFunction(
      form: form,
    ).match((failure) {
      state = ProjectFormSubmitState.error(failure.error, failure.stackTrace);
    }, (block) {
      state = ProjectFormSubmitState.data(block);
    }).run();
  }
}
