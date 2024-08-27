import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:active_resource/domain.dart';
import '../active_resource_structure_repository_provider.dart';

part 'active_resource_structure_provider.g.dart';

@riverpod
Future<ActiveStructure> activeResourceStructure(
  ActiveResourceStructureRef ref, {
  required String resourceStructureId,
}) {
  return ref
      .read(activeResourceStructureRepositoryProvider)
      .getActiveResourceStructure(id: resourceStructureId)
      .run()
      .then(
    (project) {
      return project.fold(
        (failure) => throw failure,
        (data) => data,
      );
    },
  );
}
