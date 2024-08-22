import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'workspace_id_provider.g.dart';

@riverpod
class WorkspaceId extends _$WorkspaceId {
  @override
  String? build() {
    return null;
  }

  // Add a method to mutate or update the workspace ID
  void updateWorkspaceId(String newWorkspaceId) {
    state = newWorkspaceId;
  }
}
