import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';

import 'package:notification/domain.dart';
import 'responses.dart';

class RemoteNotificationRepository implements NotificationRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteNotificationRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenProvider;

  @override
  TaskEither<NotificationFailure, Notification> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<NotificationActionPayload> payloads,
  }) =>
      TaskEither.tryCatch(
        () async => _apiClient.requestJson(
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/notification/post/notifications',
            requiredAuthorization: true,
            jsonPayload: true,
          ),
          workspaceId: workspaceId,
          authorization: await _tokenProvider(),
          payload: {
            'notificationTitle': title,
            'notificationContent': content,
            'actions': [
              for (final payload in payloads) payload.toJson(),
            ],
          },
          dataHandler: (json) => _mapResponse(
            NotificationResponse.fromJson(json['data']),
          ),
        ),
        (error, stackTrace) => NotificationFailure.fromError(error),
      );

  @override
  TaskEither<NotificationFailure, List<Notification>> getNotificationList({
    required String workspaceId,
    RequestField? requestField,
  }) =>
      TaskEither.tryCatch(
        () async => _apiClient.requestJson(
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/notification/get/notifications',
            requiredAuthorization: true,
            jsonPayload: true,
          ),
          dataHandler: (json) => (json['data'] as List? ?? [])
              .map(
                (e) => _mapResponse(
                  NotificationResponse.fromJson(e),
                ),
              )
              .toList(),
        ),
        (error, stackTrace) => NotificationFailure.fromError(error),
      );

  Notification _mapResponse(NotificationResponse response) {
    return Notification(
      title: response.notificationTitle,
      content: response.notificationContent,
      actionList: response.actionList
          .map(
            (e) => NotificationAction(
              id: e.id,
              type: e.actionType,
              color: e.actionColor.color,
              name: e.actionName,
              status: NotificationStatus(
                name: e.actionStatus.statusName,
                code: e.actionStatus.statusCode,
                icon: e.actionStatus.statusIcon.iconDataCode,
                color: e.actionStatus.statusColor.color,
              ),
            ),
          )
          .toList(),
    );
  }
}

extension _ActionPayloadSerializable on NotificationActionPayload {
  Map<String, dynamic> toJson() => {
        'actionName': actionName,
        'actionType': actionType,
        'url': url,
        'actionColor': actionColor,
        'actionStatus': actionStatus,
      };
}
