import 'package:active_resource/data.dart';
import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_structure_repository_provider.g.dart';

@riverpod
ActiveResourceStructureRepository activeResourceStructureRepository(
    ActiveResourceStructureRepositoryRef ref) {
  return RemoteActiveResourceStructureRepository();
}
