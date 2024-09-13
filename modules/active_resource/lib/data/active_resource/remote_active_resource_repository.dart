import 'package:active_resource/domain/entities/active_resource_payload.dart';
import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;

import '../../domain.dart'
    show ActiveResource, ActiveResourceCreator, ActiveResourceFailure, ActiveResourceRepository, ActiveStructure;

final class RemoteActiveResourceRepository implements ActiveResourceRepository {
  final api.ResourceApiClient _apiClient;

  RemoteActiveResourceRepository({
    required api.ResourceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<ActiveResourceFailure, void> createActiveResource({
    required ActiveStructure structure,
    required ActiveResourcePayload payload,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient.createActiveResource(
          activeStructureCode: structure.code,
          payload: api.ActiveResourcePayload(
            projectId: payload.projectId,
            liveAttributes: payload.liveAttributes,
          ),
        );
      },
      (error, stackTrace) =>
          ActiveResourceFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required ActiveStructure structure,
    required String id,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResource(
              activeStructureCode: structure.code,
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
    required ActiveStructure structure,
    required String? projectId,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResourceList(
              projectId: projectId,
              activeStructureCode: structure.code,
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
        addonAttributes: [
          
        ]
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