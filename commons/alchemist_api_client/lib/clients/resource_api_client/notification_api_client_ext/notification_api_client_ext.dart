import '../../alchemist_api_client.dart';
import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension NotificationApiClientExt on ResourceApiClient {
  Future<List<NotificationResponse>> getNotificationList({
    RequestField? requestField,
  }) async {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/notification/get/notifications',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
      ),
      dataHandler: (json) => (json['data'] as List? ?? [])
          .map(
            (e) => NotificationResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<NotificationResponse> getNotification({
    required String workspaceId,
    required String notificationId,
    RequestField? requestField,
  }) async {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/notification/get/notifications/:id',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
        requireId: true,
      ),
      id: notificationId,
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? NotificationRequestField.all,
      ),
      dataHandler: (json) => NotificationResponse.fromJson(json),
    );
  }

  Future<void> createNotification({
    required String title,
    required String content,
    required List<NotificationActionPayload> payloads,
  }) {
    return requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/notification/post/notifications',
        requiredAuthorization: true,
        jsonPayload: true,
        requiredWorkspace: true,
      ),
      payload: {
        'notificationTitle': title,
        'notificationContent': content,
        'actions': [
          for (final payload in payloads) payload.toJson(),
        ],
      },
      dataHandler: (json) {},
    );
  }
}
