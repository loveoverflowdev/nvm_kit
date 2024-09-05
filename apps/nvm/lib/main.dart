import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:flutter/widgets.dart';
import 'package:nvm/app.dart';

import 'package:auth/auth.dart' as auth;
import 'package:nvm_api_client/nvm_api_client.dart';
import 'package:workspace/workspace.dart' as workspace;
import 'package:project/project.dart' as project;
import 'package:notification/notification.dart' as notification;
import 'package:active_resource/active_resource.dart' as active_resource;
// addons
import 'package:comment_addon/comment_addon.dart' as comment_addon;
import 'package:roles_board_addon/roles_board_addon.dart' as roles_board_addon;

import 'router.dart';

void main() {
  final AlchemistApiClient alchemistApiClient = AlchemistApiClient();
  final TokenStorage tokenStorage = TokenStorage.persistent();
  final WorkspaceStorage workspaceStorage = WorkspaceStorage.inMemory();
  //
  final TokenProvider tokenProvider = tokenStorage.readAccessToken;
  final WorkspaceIdProvider workspaceIdProvider =
      workspaceStorage.readWorkspaceId;
  //
  final navigationGuard = NavigationGuard(
    workspaceIdProvider: workspaceIdProvider,
    tokenProvider: tokenProvider,
  );
  //
  final authenticationClient = AuthenticationClient(
    alchemistApiClient: alchemistApiClient,
    tokenStorage: tokenStorage,
  );
  final workspaceApiClient = WorkspaceApiClient(
    alchemistApiClient: alchemistApiClient,
    tokenProvider: tokenProvider,
    workspaceStorage: workspaceStorage,
  );
  final resourceApiClient = ResourceApiClient(
    alchemistApiClient: alchemistApiClient,
    tokenProvider: tokenProvider,
    workspaceIdProvider: workspaceIdProvider,
  );
  final commentApiClient = CommentApiClient(
    alchemistApiClient: alchemistApiClient,
    tokenProvider: tokenProvider,
    workspaceIdProvider: workspaceIdProvider,
  );
  final rolesBoardApiClient = RolesBoardApiClient(
    alchemistApiClient: alchemistApiClient,
    tokenProvider: tokenProvider,
    workspaceIdProvider: workspaceIdProvider,
  );

  final auth.AuthRepository authRepository = auth.RemoteAuthRepository(
    apiClient: authenticationClient,
  );

  final notification.NotificationRepository notificationRepository =
      notification.RemoteNotificationRepository(
    apiClient: resourceApiClient,
  );

  final project.ProjectRepository projectRepository =
      project.RemoteProjectRepository(
    apiClient: resourceApiClient,
  );

  final workspace.WorkspaceRepository workspaceRepository =
      workspace.RemoteWorkspaceRepository(
    apiClient: workspaceApiClient,
  );

  final active_resource.ActiveResourceRepository activeResourceRepository =
      active_resource.RemoteActiveResourceRepository(
    apiClient: resourceApiClient,
  );

  //
  final comment_addon.CommentRepository commentRepository =
      comment_addon.RemoteCommentRepository(
    apiClient: commentApiClient,
  );
  final roles_board_addon.RolesBoardRepository rolesBoardRepository =
      roles_board_addon.RemoteRolesBoardRepository(
    apiClient: rolesBoardApiClient,
  );
  //

  runApp(NvmApp(
    navigationGuard: navigationGuard,
    authRepository: authRepository,
    notificationRepository: notificationRepository,
    projectRepository: projectRepository,
    workspaceRepository: workspaceRepository,
    activeResourceRepository: activeResourceRepository,
    //
    commentRepository: commentRepository,
    rolesBoardRepository: rolesBoardRepository,
  ));
}
