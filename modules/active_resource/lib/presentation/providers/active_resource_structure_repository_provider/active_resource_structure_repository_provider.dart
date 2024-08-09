import 'package:active_resource/data.dart';
import 'package:active_resource/domain.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart' show ApiClient;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_structure_repository_provider.g.dart';

@riverpod
ActiveResourceStructureRepository activeResourceStructureRepository(ActiveResourceStructureRepositoryRef ref) {
  return RemoteActiveResourceStructureRepository(
    apiClient: ApiClient.nvm(), 
    tokenProvider: () async {

    },
  );
}
