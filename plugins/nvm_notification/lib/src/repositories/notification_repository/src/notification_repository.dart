import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'failures/failures.dart';
import 'responses/responses.dart';
import 'params/params.dart';

abstract class NotificationRepository {
  NotificationRepository();

  TaskEither<NotificationFailure, List<NotificationResponse>>
      getNotificationList({
    required String workspaceId,
    required NotificationRequestField requestField,
  });

  TaskEither<NotificationFailure, NotificationResponse> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<ActionPayload> payloads,
  });
}

class RemoteNotificationRepository extends NotificationRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenFetcher;

  RemoteNotificationRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenFetcher,
  })  : _apiClient = apiClient,
        _tokenFetcher = tokenFetcher;

  @override
  TaskEither<NotificationFailure, NotificationResponse> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<ActionPayload> payloads,
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
          authorization: await _tokenFetcher(),
          payload: {
            'notificationTitle': title,
            'notificationContent': content,
            'actions': [
              for (final payload in payloads) payload.toJson(),
            ],
          },
          dataHandler: (json) => NotificationResponse.fromJson(json['data']),
        ),
        (error, stackTrace) => NotificationFailure.fromError(error),
      );

  @override
  TaskEither<NotificationFailure, List<NotificationResponse>>
      getNotificationList({
    required String workspaceId,
    required NotificationRequestField requestField,
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
                  .map((e) => NotificationResponse.fromJson(e))
                  .toList(),
            ),
            (error, stackTrace) => NotificationFailure.fromError(error),
          );
}
