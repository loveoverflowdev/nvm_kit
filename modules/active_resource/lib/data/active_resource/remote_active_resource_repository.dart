import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart' show TaskEither;

import '../../domain.dart'
    show
        ActiveResource,
        ActiveResourceCreator,
        ActiveResourceFailure,
        ActiveResourceProject,
        ActiveResourceRepository;

final class RemoteActiveResourceRepository implements ActiveResourceRepository {
  final ResourceApiClient _apiClient;

  RemoteActiveResourceRepository({
    required final ResourceApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  }) : _apiClient = apiClient;

  @override
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required String resourceCode,
    required String id,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient
            .getActiveResource(
              resourceCode: resourceCode,
              id: id,
              workspaceId: '',
            )
            .then(
              (value) => _mapResponse(value),
            );
        // return _apiClient.requestJson(
        //   endpoint: ApiEndpoint(
        //     uriTemplate:
        //         '/api/workspaces/:workspace_id/active-resource/get/resources/$resourceCode/$id',
        //   ),
        //   alchemistQuery: AlchemistQuery(),
        //   dataHandler: (json) => _mapResponse(
        //     ActiveResourceResponse.fromJson(json['data']),
        //   ),
        // );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(error),
    );
  }

  @override
  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required String resourceCode,
    RequestField? requestField,
  }) {
    // TODO: implement getActiveResourceList
    throw UnimplementedError();
  }

  ActiveResource _mapResponse(
    ActiveResourceResponse response,
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