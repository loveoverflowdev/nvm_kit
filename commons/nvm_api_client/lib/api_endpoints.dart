import 'package:alchemist_api_client/alchemist_api_client.dart';

ApiEndpoint signin() => ApiEndpoint(
      uriTemplate: '/api/auth/post/authenticate',
      jsonPayload: true,
    );

ApiEndpoint getOneWorkspace({
  required String id,
}) =>
    ApiEndpoint(
      uriTemplate: '/api/workspace/get/workspaces/$id',
      requiredAuthorization: true,
      jsonPayload: true,
    );

ApiEndpoint getWorkspaceList() => ApiEndpoint(
      uriTemplate: '/api/workspace/get/workspaces',
      requiredAuthorization: true,
      jsonPayload: true,
    );

ApiEndpoint getOneActiveResource({
  required String resourceCode,
  required String id,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-resource/get/resources/$resourceCode/$id',
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint getActiveResourceList({
  required String resourceCode,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-resource/get/resources/$resourceCode',
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint getOneActiveResourceStructure({
  required String id,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-resource/get/structures/$id',
      jsonPayload: true,
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint getActiveResourceStructureList() => ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-resource/get/structures',
      jsonPayload: true,
      requiredWorkspace: true,
      requiredAuthorization: true,
    );

ApiEndpoint getNotificationList() => ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/notification/get/notifications',
      requiredAuthorization: true,
      jsonPayload: true,
      requiredWorkspace: true,
    );

ApiEndpoint getOneNotification({
  required String notificationId,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/notification/get/notifications/$notificationId',
      requiredAuthorization: true,
      requiredWorkspace: true,
      jsonPayload: true,
    );

ApiEndpoint createNotification() => ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/notification/post/notifications',
      requiredAuthorization: true,
      jsonPayload: true,
      requiredWorkspace: true,
    );

ApiEndpoint getProjectList() => ApiEndpoint(
      uriTemplate: '/api/workspaces/:workspace_id/project/get/projects',
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint getOneProject({
  required String id,
}) =>
    ApiEndpoint(
      uriTemplate: '/api/workspaces/:workspace_id/project/get/projects/$id',
      requiredAuthorization: true,
      jsonPayload: true,
      requiredWorkspace: true,
    );

ApiEndpoint createProject() => ApiEndpoint(
      uriTemplate: '/api/workspaces/:workspace_id/project/post/projects',
      requiredAuthorization: true,
      jsonPayload: true,
      requiredWorkspace: true,
    );

ApiEndpoint getUser({
  required String id,
}) =>
    ApiEndpoint(
      uriTemplate: '/api/user/get/users/$id',
      requiredAuthorization: true,
    );
