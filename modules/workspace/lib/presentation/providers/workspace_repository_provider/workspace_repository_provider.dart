import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:workspace/data.dart';
import 'package:workspace/domain.dart';

part 'workspace_repository_provider.g.dart';

@riverpod
WorkspaceRepository workspaceRepository(WorkspaceRepositoryRef ref) {
  return RemoteWorkspaceRepository(
    apiClient: ApiClient.nvm(),
    tokenProvider: () async {},
  );
}
