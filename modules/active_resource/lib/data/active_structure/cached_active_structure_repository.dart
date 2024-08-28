import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;
import '../../domain.dart'
    show
        ActiveField,
        ActiveStructure,
        ActiveStructureFailure,
        ActiveStructureRepository;
import 'cached_active_structure_storage.dart';

final class CachedActiveStructureRepository
    implements ActiveStructureRepository {
  final api.ResourceApiClient _apiClient;
  final CachedActiveStructureStorage _storage;

  CachedActiveStructureRepository({
    required api.ResourceApiClient apiClient,
    required CachedActiveStructureStorage storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  @override
  TaskEither<ActiveStructureFailure, String?> readActiveStructureId({
    required String code,
  }) {
    return TaskEither.tryCatch(
      () {
        return _storage.readActiveStructureId(code: code);
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
      ),
    );
  }

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructure({
    required String id,
  }) {
    return TaskEither.tryCatch(
      () async {
        final activeStructure = await _apiClient
            .getActiveStructure(
              id: id,
            )
            .then(
              (value) => _mapResponse(value),
            );

        await _storage.writeActiveStructure(
          code: activeStructure.code,
          activeStructure: activeStructure,
        );

        return activeStructure;
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
      ),
    );
  }

  @override
  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      getActiveStructureList() {
    return TaskEither.tryCatch(
      () async {
        final activeStructureList =
            await _apiClient.getActiveStructureList().then(
                  (value) => value.map(_mapResponse).toList(),
                );
        for (final structure in activeStructureList) {
          await _storage.writeActiveStructure(
            code: structure.code,
            activeStructure: structure,
          );
        }

        return activeStructureList;
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
      ),
    );
  }

  ActiveStructure _mapResponse(
    api.ActiveStructureResponse response,
  ) {
    return ActiveStructure(
      code: response.code,
      id: response.id,
      title: response.title,
      fields: response.fields
          .map(
            (e) => ActiveField(
              id: e.id,
              key: e.key,
              type: e.type,
              title: e.title,
              order: e.order,
              placeholder: '',
              description: '',
            ),
          )
          .toList(),
    );
  }
}
