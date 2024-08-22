import 'package:alchemist_api_client/alchemist_api_client.dart' show ApiClient;
import 'package:project/data.dart' show RemoteProjectRepository;
import 'package:project/domain.dart' show ProjectRepository;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_repository_provider.g.dart';

@riverpod
ProjectRepository projectRepository(ProjectRepositoryRef ref) {
  return RemoteProjectRepository();
}
