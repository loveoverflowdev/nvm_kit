import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'notification_repository.dart';

class RemoteNotificationRepository extends NotificationRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenFetcher;

  RemoteNotificationRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenFetcher,
  })  : _apiClient = apiClient,
        _tokenFetcher = tokenFetcher;

  @override
  TaskEither<NotificationFailure, dynamic> createNotification({
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
          dataHandler: (json) => json,
        ),
        (error, stackTrace) => NotificationFailure.fromError(error),
      );

  @override
  TaskEither<NotificationFailure, List<NotificationResponse>>
      getNotificationList({
    required String workspaceId,
    required List<NotificationRequestField> fields,
  }) {
    // TODO: implement getNotificationList
    throw UnimplementedError();
  }
}
