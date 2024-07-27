import '../../functions/functions.dart'
    show
        ProjectBlock,
        ProjectDescription,
        ProjectForm,
        ProjectName,
        createProject,
        getProjectList;

import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_project/nvm_project.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

Future<String?> tokenFetcher() async {
  return '';
}

@riverpod
ProjectRepository projectRepository(ProjectRepositoryRef ref) {
  return ProjectRepository.remote(
    apiClient: ApiClient.nvm(),
    tokenFetcher: tokenFetcher,
  );
}

typedef ProjectListState = AsyncValue<List<ProjectBlock>>;

@riverpod
class ProjectList extends _$ProjectList {
  @override
  ProjectListState build() => ProjectListState.data(List.empty());

  Future<void> loadProjectList({
    required Future<String> Function() workspaceIdFetcher,
  }) async {
    state = const AsyncValue.loading();

    getProjectList(
      workspaceId: await workspaceIdFetcher(),
    ).match(
      (failure) {
        state = ProjectListState.error(
          failure,
          StackTrace.current,
        );
      },
      (response) {
        state = ProjectListState.data(response);
      },
    ).run(
      ref.read(projectRepositoryProvider),
    );
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
