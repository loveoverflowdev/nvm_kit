import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workspace/domain.dart';

import '../workspace_repository_provider.dart';

part 'workspace_provider.g.dart';

typedef WorkspaceState = AsyncValue<Workspace?>;

@riverpod
Future<WorkspaceState> workspace(
  WorkspaceRef ref, {
  required String workspaceId,
}) async {
  return getWorkspaceTask(
    workspaceId: 'default',
  ).match(
    (failure) {
      return WorkspaceState.error(
        failure,
        StackTrace.current,
      );
    },
    (data) {
      return WorkspaceState.data(data);
    },
  ).run(
    ref.read(workspaceRepositoryProvider),
  );
}

// @riverpod
// class Workspace extends _$Workspace {
//   @override
//   WorkspaceState build() => const WorkspaceState.data(null);

//   void loadWorkspaces({
//     required Future<String> Function() workspaceIdProvider,
//   }) async {
//     state = const AsyncValue.loading();

//     getWorkspaceListTask(
//       workspaceId: await workspaceIdProvider(),
//     ).match(
//       (failure) {
//         state = WorkspaceListState.error(
//           failure,
//           StackTrace.current,
//         );
//       },
//       (response) {
//         state = WorkspaceListState.data(response);
//       },
//     ).run(
//       ref.read(WorkspaceRepositoryProvider),
//     );
//   }
// }
