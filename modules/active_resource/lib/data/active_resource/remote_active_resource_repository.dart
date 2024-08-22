import 'package:alchemist_api_client/alchemist_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;

import '../../domain.dart'
    show
        ActiveResource,
        ActiveResourceCreator,
        ActiveResourceFailure,
        ActiveResourceProject,
        ActiveResourceRepository;

final class RemoteActiveResourceRepository implements ActiveResourceRepository {
  late final api.ResourceApiClient _apiClient;

  RemoteActiveResourceRepository();

  set apiClient(api.ResourceApiClient client) {
    _apiClient = client;
  }

  @override
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required String resourceCode,
    required String id,
    required String workspaceId,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResource(
              resourceCode: resourceCode,
              id: id,
              workspaceId: workspaceId,
            )
            .then(
              (value) => _mapResponse(value),
            );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(error),
    );
  }

  @override
  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required String resourceCode,
    required String workspaceId,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResourceList(
              resourceCode: resourceCode,
              workspaceId: '',
            )
            .then(
              (value) => value.map(_mapResponse).toList(),
            );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(error),
    );
  }

  ActiveResource _mapResponse(
    api.ActiveResourceResponse response,
  ) =>
      ActiveResource(
        attributes: response.attributes,
        project: ActiveResourceProject(
          id: response.project.id,
          name: response.project.name,
          description: response.project.description,
          icon: response.project.icon,
          isDefault: response.project.isDefault,
          // TODO: convert to DateTime
          createdAt: response.project.createdAt,
          updatedAt: response.project.updatedAt,
        ),
        creator: ActiveResourceCreator(
          avatarUrl: response.creator.avatarUrl,
          thumbnailAvatarUrl: response.creator.thumbnailAvatarUrl,
          email: response.creator.email,
          username: response.creator.username,
          id: response.creator.id,
          phone: response.creator.phone,
          // TODO: convert DateTime
        ),
      );
}


/*
ActiveResourceBlock _convertActiveResponseToBlock(
  ActiveResourceResponse response,
) =>
    ActiveResourceBlock(
      attributes: response.attributes,
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