import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart'
    show FutureProvider;
import 'package:active_resource/domain.dart';
import 'active_structure_repository_providers.dart';

final activeStructureByIdProvider =
    FutureProvider.family<ActiveStructure, String>(
  (ref, id) {
    return getActiveStructureByIdTask(
      id,
    )
        .run(
      ref.watch(
        remoteActiveStructureRepositoryProvider,
      ),
    )
        .then(
      (activeStructure) {
        return activeStructure.fold(
          (failure) => throw failure,
          (data) => data,
        );
      },
    );
  },
);
