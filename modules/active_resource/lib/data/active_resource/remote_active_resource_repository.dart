import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;

import '../../domain.dart'
    show
        ActiveResource,
        ActiveResourceCreator,
        ActiveResourceFailure,
        ActiveResourceRepository;

final class RemoteActiveResourceRepository implements ActiveResourceRepository {
  final api.ResourceApiClient _apiClient;

  RemoteActiveResourceRepository({
    required api.ResourceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required String activeStructureCode,
    required String id,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResource(
              activeStructureCode: activeStructureCode,
              id: id,
              requestField: requestField,
            )
            .then(
              (value) => _mapResponse(value),
            );
      },
      (error, stackTrace) =>
          ActiveResourceFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required String activeStructureCode,
    required String? projectId,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResourceList(
              projectId: projectId,
              activeStructureCode: activeStructureCode,
              requestField: requestField,
            )
            .then(
              (value) => value.map(_mapResponse).toList(),
            );
      },
      (error, stackTrace) =>
          ActiveResourceFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  ActiveResource _mapResponse(
    api.ActiveResourceResponse response,
  ) =>
      ActiveResource(
        id: response.id,
        liveAttributes: response.liveAttributes,
        projectId: response.projectId,
        creator: ActiveResourceCreator(
          avatarUrl: response.creator?.avatarUrl,
          thumbnailAvatarUrl: response.creator?.thumbnailAvatarUrl,
          email: response.creator?.email,
          username: response.creator?.username,
          id: response.creator?.id,
          phone: response.creator?.phone,
          // TODO: convert DateTime
        ),
      );
}


/*
ActiveResourceBlock _convertActiveResponseToBlock(
  ActiveResourceResponse response,
) =>
    ActiveResourceBlock(
      liveAttributes: response.liveAttributes,
      project: ActiveResourceProjectBlock(
        id: response.project.id,
        name: response.project.name,
        description: response.project.description,
        icon: response.project.icon,
        isDefault: response.project.isDefault,
        // TODO: convert to DateTime
        createdAt: response.project.createdAt,
        updatedAt: response.project.updatedAt,
      ),
      creator: ActiveResourceCreatorBlock(
        avatarUrl: response.creator.avatarUrl,
        thumbnailAvatarUrl: response.creator.thumbnailAvatarUrl,
        email: response.creator.email,
        username: response.creator.username,
        id: response.creator.id,
        phone: response.creator.phone,
        // TODO: convert DateTime
      ),
    );

*/