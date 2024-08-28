import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;
import '../../domain.dart'
    show
        ActiveField,
        ActiveStructure,
        ActiveStructureFailure,
        ActiveStructureRepository;

final class RemoteActiveStructureRepository
    implements ActiveStructureRepository {
  final api.ResourceApiClient _apiClient;

  RemoteActiveStructureRepository({
    required api.ResourceApiClient apiClient,
  })  : _apiClient = apiClient;

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureByCode(String code) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient
            .getActiveStructureByCode(
              code,
            )
            .then(
              (value) => _mapResponse(value),
            );
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
      ),
    );
  }

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureById(String id) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient
            .getActiveStructureById(
              id,
            )
            .then(
              (value) => _mapResponse(value),
            );
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
       return await _apiClient.getActiveStructureList().then(
                  (value) => value.map(_mapResponse).toList(),
                );

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

