import 'package:alchemist_api_client/alchemist_api_client.dart';

ApiEndpoint signin() => ApiEndpoint(
      uriTemplate: '/api/auth/post/authenticate',
      jsonPayload: true,
    );

ApiEndpoint getWorkspaceById(String id) => ApiEndpoint(
      uriTemplate: '/api/workspace/get/workspaces/$id',
      requiredAuthorization: true,
    );

ApiEndpoint getWorkspaceList() => ApiEndpoint(
      uriTemplate: '/api/workspace/get/workspaces',
      requiredAuthorization: true,
    );

ApiEndpoint getActiveResourceById(
  String id, {
  required String activeStructureCode,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-module/get/resources/$activeStructureCode/$id',
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint getActiveResourceList({
  required String activeStructureCode,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-module/get/resources/$activeStructureCode',
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint getActiveStructureById(String id) => ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-module/get/structures/$id',
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint getActiveStructureList() => ApiEndpoint(
      uriTemplate: '/api/workspaces/:workspace_id/active-module/get/structures',
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

ApiEndpoint getNotificationById(String id) => ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/notification/get/notifications/$id',
      requiredAuthorization: true,
      requiredWorkspace: true,
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

ApiEndpoint getByProjectId(String id) => ApiEndpoint(
      uriTemplate: '/api/workspaces/:workspace_id/project/get/projects/$id',
      requiredAuthorization: true,
      requiredWorkspace: true,
    );

ApiEndpoint createProject() => ApiEndpoint(
      uriTemplate: '/api/workspaces/:workspace_id/project/post/projects',
      requiredAuthorization: true,
      jsonPayload: true,
      requiredWorkspace: true,
    );

ApiEndpoint getUserById(String id) => ApiEndpoint(
      uriTemplate: '/api/user/get/users/$id',
      requiredAuthorization: true,
    );

// Addons
ApiEndpoint getCommentList({
  required String activeStructureCode,
  required String resourceId,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-module/resources/$activeStructureCode/$resourceId/features/widget-comment/get/comments',
    );

ApiEndpoint createComment({
  required String activeStructureCode,
  required String resourceId,
}) =>
    ApiEndpoint(
      uriTemplate:
          '/api/workspaces/:workspace_id/active-resource/resources/$activeStructureCode/$resourceId/features/widget-comment/post/comments',
      requiredWorkspace: true,
      requiredAuthorization: true,
      jsonPayload: true,
    );
