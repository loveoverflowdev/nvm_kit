import 'package:project/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../project_repository_provider.dart';

part 'project_list_provider.g.dart';

typedef ProjectListState = AsyncValue<List<Project>>;

@riverpod
class ProjectList extends _$ProjectList {
  @override
  ProjectListState build() => ProjectListState.data(List.empty());

  Future<void> loadProjectList({
    required Future<String> Function() workspaceIdProvider,
  }) async {
    state = const AsyncValue.loading();

    getProjectList(
      workspaceId: await workspaceIdProvider(),
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
