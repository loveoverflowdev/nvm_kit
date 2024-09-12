import 'package:project/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../project_repository_provider.dart';

part 'project_list_provider.g.dart';

typedef ProjectListState = AsyncValue<List<Project>>;

@riverpod
class ProjectList extends _$ProjectList {
  @override
  ProjectListState build() => ProjectListState.data(List.empty());

  Future<void> loadProjectList() async {
    state = const AsyncValue.loading();

    getProjectListTask(requestField: null).match(
      (failure) {
        state = ProjectListState.error(
          failure,
          failure.stackTrace ?? StackTrace.current,
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
