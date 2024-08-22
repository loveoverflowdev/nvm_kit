import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workspace/data.dart';
import 'package:workspace/domain.dart';

part 'workspace_repository_provider.g.dart';

@riverpod
WorkspaceRepository workspaceRepository(WorkspaceRepositoryRef ref) {
  return RemoteWorkspaceRepository();
}
