import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart' show TaskEither;
import '../../domain.dart'
    show
        ActiveFieldStructure,
        ActiveResourceStructure,
        ActiveResourceStructureFailure,
        ActiveResourceStructureRepository;

final class RemoteActiveResourceStructureRepository
    implements ActiveResourceStructureRepository {
  late final ResourceApiClient _apiClient;

  RemoteActiveResourceStructureRepository();

  set apiClient(ResourceApiClient client) {
    _apiClient = client;
  }

  @override
  TaskEither<ActiveResourceStructureFailure, ActiveResourceStructure>
      getActiveResourceStructure({
    required String id,
    required String workspaceId,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResourceStructure(
              workspaceId: workspaceId,
              id: id,
            )
            .then(
              (value) => _mapResponse(value),
            );
      },
      (error, stackTrace) => ActiveResourceStructureFailure.fromError(
        error,
      ),
    );
  }

  @override
  TaskEither<ActiveResourceStructureFailure, List<ActiveResourceStructure>>
      getActiveResourceStructureList({
    required String workspaceId,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient
            .getActiveResourceStructureList(
              workspaceId: workspaceId,
            )
            .then(
              (value) => value.map(_mapResponse).toList(),
            );
      },
      (error, stackTrace) => ActiveResourceStructureFailure.fromError(
        error,
      ),
    );
  }

  ActiveResourceStructure _mapResponse(
      ActiveResourceStructureResponse response) {
    return ActiveResourceStructure(
      code: response.code,
      id: response.id,
      title: response.title,
      fields: response.fields
          .map(
            (e) => ActiveFieldStructure(
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
