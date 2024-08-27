import 'dart:io';

import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;
import '../../domain.dart'
    show
        ActiveField,
        ActiveStructure,
        ActiveStructureFailure,
        ActiveStructureRepository;

final class CachedActiveStructureRepository
    implements ActiveStructureRepository {
  final api.ResourceApiClient _apiClient;
  final Directory _directory;

  CachedActiveStructureRepository({
    required api.ResourceApiClient apiClient,
    required Directory directory,
  })  : _apiClient = apiClient,
        _directory = directory;

  @override
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructure({
    required String id,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveStructure(
              id: id,
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
        return _apiClient.getActiveStructureList().then(
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
              isRequired: e.isRequired,
              isUnique: e.isUnique,
              isMultipleValued: e.isMultipleValued,
              searchable: e.searchable,
              sortable: e.sortable,
              filterable: e.filterable,
              isConcrete: e.isConcrete,
              showInExport: e.showInExport,
              showInImport: e.showInImport,
              createdBy: e.createdBy,
              updatedBy: e.updatedBy,
              createdAt: e.createdAt,
              updatedAt: e.updatedAt,
            ),
          )
          .toList(),
    );
  }
}
