import 'package:addon/addon.dart' as addon;
import 'package:comment_addon/comment_addon.dart' as comment_addon;
import 'package:roles_board_addon/domain.dart';
import 'package:roles_board_addon/roles_board_addon.dart' as roles_board_addon;
import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart' show TaskEither;

import '../../domain.dart'
    show
        ActiveResource,
        ActiveResourceCreator,
        ActiveResourceFailure,
        ActiveResourceForm,
        ActiveResourceRepository,
        ActiveStructure;

final class RemoteActiveResourceRepository implements ActiveResourceRepository {
  final api.ResourceApiClient _apiClient;

  RemoteActiveResourceRepository({
    required api.ResourceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<ActiveResourceFailure, void> createActiveResource({
    required ActiveStructure structure,
    required ActiveResourceForm form,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient.createActiveResource(
          activeStructureCode: structure.code,
          payload: api.ActiveResourcePayload(
            projectId: form.projectId,
            attributes: form.getAllAttributes(),
            addonsAttributes: form.getAllAddonAttributes(),
          ),
        );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<ActiveResourceFailure, void> updateActiveResourceById(
    String id, {
    required ActiveStructure structure,
    required ActiveResourceForm form,
  }) {
    // TODO: implement updateActiveResource
    throw UnimplementedError();
  }

  @override
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResourceById(
    String id, {
    required ActiveStructure structure,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient
            .getActiveResourceById(
              id,
              activeStructureCode: structure.code,
              requestField: requestField,
            )
            .then(
              (value) => _mapResponse(value, structure: structure),
            );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
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
              (value) => value
                  .map(
                    (e) => _mapResponse(e, structure: structure),
                  )
                  .toList(),
            );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<ActiveResourceFailure, void> deleteActiveResourceById(
    String id, {
    required ActiveStructure structure,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient.deleteActiveResourceById(
          id,
          activeStructureCode: structure.code,
        );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  ActiveResource _mapResponse(
    api.ActiveResourceResponse response, {
    required ActiveStructure structure,
  }) {
    List<addon.Addon> addons = [];

    if (structure.supportAddonType((e) => e.isComment)) {
      addons.add(comment_addon.commentAddon);
    }

    if (structure.supportAddonType((e) => e.isRolesBoard)) {
      final rolesBoardAddons = <addon.Addon>[];
      final rolesBoardAddonType =
          structure.getAddonTypeWhere((e) => e.isRolesBoard)?.whenOrNull(
                (List) => e,
              );

      rolesBoardAddons.addAll(
        response.addonAttributes
            .whereType<api.RolesBoardResourceStateResponse>()
            .map((response) {
          return roles_board_addon.rolesBoardAddon(
            addonInstanceCode: rolesBoardAddonType.w,
            resourceState: roles_board_addon.RolesBoardResourceState(
              typeCode: response.typeCode,
              boardRoleId: response.widgetBoardRoleId,
              averageProgress: response.averageProgress,
              finalStatus: _mapProgressStatus(response.finalStatus),
              roleStates: response.roles
                  .map(
                    (role) => roles_board_addon.RoleResourceState(
                      assignedToUserId: role.assignedToUserId ?? '',
                      roleId: role.id,
                      progress: role.progress,
                      status: _mapProgressStatus(role.status),
                    ),
                  )
                  .toList(),
            ),
          );
        }).toList(),
      );

      if (rolesBoardAddons.isNotEmpty) {
        addons.addAll(rolesBoardAddons);
      } else {
        // addons.add(
        //   roles_board_addon.rolesBoardAddon(
        //     resourceState: roles_board_addon.RolesBoardResourceState.empty(),
        //   ),
        // );
      }
    }

    addons.sort((a, b) => a.priority.compareTo(b.priority));

    return ActiveResource(
      id: response.id,
      liveAttributes: response.primaryAttributes,
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
      addons: addons,
    );
  }

  ProgressStatus _mapProgressStatus(api.ProgressStatusResponse response) {
    return switch (response) {
      api.ProgressStatusResponse.notStarted => ProgressStatus.notStarted,
      api.ProgressStatusResponse.inProgress => ProgressStatus.inProgress,
      api.ProgressStatusResponse.completed => ProgressStatus.completed,
    };
  }
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
