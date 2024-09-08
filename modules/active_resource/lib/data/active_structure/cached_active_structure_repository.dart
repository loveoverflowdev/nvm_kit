import 'package:fpdart/fpdart.dart' show TaskEither;

import '../../domain.dart'
    show ActiveStructure, ActiveStructureFailure, ActiveStructureRepository;
import 'active_structure_storage.dart';

final class CachedActiveStructureRepository
    implements ActiveStructureRepository {
  final ActiveStructureRepository _activeStructureRepository;
  final CachedActiveStructureStorage _storage;

  CachedActiveStructureRepository({
    required ActiveStructureRepository activeStructureRepository,
    required CachedActiveStructureStorage storage,
  })  : _activeStructureRepository = activeStructureRepository,
        _storage = storage;

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureByCode(
      String code) {
    return TaskEither.tryCatch(
      () {
        return _storage.readActiveStructureByCode(code);
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    ).flatMap<ActiveStructure>((cachedResult) => cachedResult != null
        ? TaskEither.right(cachedResult)
        : _activeStructureRepository.getActiveStructureByCode(code).map(
            (activeStructure) {
              // TODO: sync it
              _storage.writeActiveStructure(activeStructure);
              return activeStructure;
            },
          ));
  }

  @override
  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      getActiveStructureList() {
    return TaskEither.tryCatch(
      () async {
        return _storage.readActiveStructureList();
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    ).flatMap(
      (cachedResult) => cachedResult.isEmpty
          ? _activeStructureRepository.getActiveStructureList().map(
              (activeStructureList) {
                // TODO: sync it
                for (final activeStructure in activeStructureList) {
                  _storage.writeActiveStructure(activeStructure);
                }
                return activeStructureList;
              },
            )
          : TaskEither.right(cachedResult),
    );
  }
}
