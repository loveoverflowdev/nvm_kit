import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:active_resource/domain.dart';
import '../active_structure_repository_provider.dart';

part 'active_structure_provider.g.dart';

@riverpod
Future<ActiveStructure> activeStructure(
  ActiveStructureRef ref, {
  required String activeStructureCode,
}) {
  return ref
      .read(activeStructureRepositoryProvider)
      .getActiveStructureByCode(activeStructureCode)
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
