import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:active_resource/domain.dart';
import '../active_structure_repository_provider.dart';

part 'active_structure_provider.g.dart';

@riverpod
Future<ActiveStructure> activeStructure(
  ActiveStructureRef ref, {
  required String resourceStructureId,
}) {
  return ref
      .read(activeStructureRepositoryProvider)
      .getActiveStructure(id: resourceStructureId)
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
