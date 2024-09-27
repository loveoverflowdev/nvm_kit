import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:flutter/widgets.dart' show WidgetsFlutterBinding, runApp;
import 'package:nvm_app_builder/nvm_app_builder.dart';

import 'package:auth/auth.dart' as auth;
import 'package:nvm_api_client/nvm_api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workspace/workspace.dart' as workspace;
import 'package:project/project.dart' as project;
import 'package:notification/notification.dart' as notification;
import 'package:preference/preference.dart' as preference;
import 'package:active_resource/active_resource.dart' as active_resource;

// addons
import 'package:comment_addon/comment_addon.dart' as comment_addon;
import 'package:roles_board_addon/roles_board_addon.dart' as roles_board_addon;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AlchemistApiClient alchemistApiClient = AlchemistApiClient();
  final TokenStorage tokenStorage = TokenStorage.persistent();
  final WorkspaceStorage workspaceStorage = WorkspaceStorage.inMemory();
  //
  final TokenProvider tokenProvider = tokenStorage.readAccessToken;
  final WorkspaceIdProvider workspaceIdProvider =
      workspaceStorage.readWorkspaceId;

  final UserIdProvider userIdProvider = tokenStorage.readUserId;

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
  final userApiClient = UserApiClient(
    alchemistApiClient: alchemistApiClient,
    tokenProvider: tokenProvider,
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

  final active_resource.RemoteActiveStructureRepository
      remoteActiveStructureRepository =
      active_resource.RemoteActiveStructureRepositoryImpl(
    apiClient: resourceApiClient,
  );

  final active_resource.LocalActiveStructureRepository
      localActiveStructureRepository =
      active_resource.LocalActiveStructureRepositoryImpl(
    sharedPreferences: await SharedPreferences.getInstance(),
  );

  final preference.UserPreferenceRepository userPreferenceRepository =
      preference.UserPreferenceRepositoryImpl(
    userIdProvider: userIdProvider,
    apiClient: userApiClient,
  );

  //
  final comment_addon.CommentRepository commentRepository =
      comment_addon.RemoteCommentRepository(
    apiClient: commentApiClient,
  );
  final roles_board_addon.RemoteRolesBoardRepository
      remoteRolesBoardRepository =
      roles_board_addon.RemoteRolesBoardRepositoryImpl(
    apiClient: rolesBoardApiClient,
  );
  final roles_board_addon.LocalRolesBoardRepository localRolesBoardRepository =
      roles_board_addon.LocalRolesBoardRepositoryImpl(
          sharedPreferences: await SharedPreferences.getInstance());
  final roles_board_addon.RolesBoardResourceStateRepository rolesBoardResourceStateRepository =
      roles_board_addon.RemoteRolesBoardResourceStateRepository(
    apiClient: rolesBoardApiClient,
  );

  runApp(NvmApp(
    templateRepository: TemplateRepository.example(),
    navigationGuard: navigationGuard,
    authRepository: authRepository,
    notificationRepository: notificationRepository,
    projectRepository: projectRepository,
    workspaceRepository: workspaceRepository,
    userPreferenceRepository: userPreferenceRepository,
    activeResourceRepository: activeResourceRepository,
    remoteActiveStructureRepository: remoteActiveStructureRepository,
    localActiveStructureRepository: localActiveStructureRepository,
    //
    commentRepository: commentRepository,
    remoteRolesBoardRepository: remoteRolesBoardRepository,
    localRolesBoardRepository: localRolesBoardRepository,
    rolesBoardResourceStateRepository: rolesBoardResourceStateRepository,
  ));
}
