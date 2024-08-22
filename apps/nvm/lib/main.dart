import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:flutter/material.dart';
import 'package:nvm/app.dart';

import 'package:auth/auth.dart' as auth;
import 'package:workspace/workspace.dart' as workspace;
import 'package:project/project.dart' as project;
import 'package:notification/notification.dart' as notification;
import 'package:active_resource/active_resource.dart' as active_resource;

void main() {
  final AlchemistApiClient alchemistApiClient = AlchemistApiClient();
  final TokenStorage tokenStorage = TokenStorage.inMemory();

  final authenticationClient = AuthenticationClient(
    alchemistApiClient: alchemistApiClient,
    tokenStorage: tokenStorage,
  );
  final ResourceApiClient resourceApiClient = ResourceApiClient(
    alchemistApiClient: alchemistApiClient,
    tokenProvider: tokenStorage.readAccessToken,
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
    apiClient: resourceApiClient,
  );

  final active_resource.ActiveResourceRepository activeResourceRepository =
      active_resource.RemoteActiveResourceRepository(
    apiClient: resourceApiClient,
  );

  runApp(NvmApp(
    authRepository: authRepository,
    notificationRepository: notificationRepository,
    projectRepository: projectRepository,
    workspaceRepository: workspaceRepository,
    activeResourceRepository: activeResourceRepository,
  ));
}
