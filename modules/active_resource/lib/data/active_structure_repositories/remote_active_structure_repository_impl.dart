import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;
import '../../domain.dart'
    show
        ActiveFieldDataType,
        ActiveFieldStructure,
        ActiveStructure,
        ActiveStructureFailure,
        AddonType,
        RemoteActiveStructureRepository,
        RolesBoardAddonConfiguration;

final class RemoteActiveStructureRepositoryImpl
    implements RemoteActiveStructureRepository {
  final api.ResourceApiClient _apiClient;

  RemoteActiveStructureRepositoryImpl({
    required api.ResourceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureById(
    String id,
  ) {
    return TaskEither.tryCatch(
      () {
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
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureByCode(
    String code,
  ) {
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
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      getActiveStructureList() {
    return TaskEither.tryCatch(
      () {
        return _apiClient.getActiveStructureList().then(
              (value) => value
                  .map(
                    _mapResponse,
                  )
                  .toList(),
            );
      },
      (error, stackTrace) => ActiveStructureFailure.fromError(
        error,
        stackTrace: stackTrace,
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
      supportedAddonTypes: response.supportedAddonTypes
          .map(
            (e) => e.when(
              rolesBoard: (configurations) => AddonType.rolesBoard(
                configurations: configurations
                    .map(
                      (e) => RolesBoardAddonConfiguration(
                        fieldCode: e.fieldCode,
                        widgetId: e.addonId,
                        type: e.type,
                      ),
                    )
                    .toList(),
              ),
              comment: () => AddonType.comment(),
              unsupported: () => AddonType.unsupported(),
            ),
          )
          .toList(),
      fields: response.fields
          .map(
            (e) => ActiveFieldStructure(
              id: e.id,
              key: e.key,
              type: ActiveFieldDataType.fromString(e.type),
              title: e.title,
              order: e.order,
              placeholder: '',
              description: '',
              isRequired: e.isRequired ?? false,
              valueActiveStructureId: e.valueActiveStructureId ?? '',
            ),
          )
          .toList(),
    );
  }
}
