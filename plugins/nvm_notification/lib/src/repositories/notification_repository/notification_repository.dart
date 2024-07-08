export 'failures/failures.dart';
export 'responses/responses.dart';
export 'params/params.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import '_remote_notification_repository.dart';
import 'failures/failures.dart';
import 'responses/responses.dart';
import 'params/params.dart';

abstract class NotificationRepository {
  NotificationRepository();

  factory NotificationRepository.remote({
    required ApiClient apiClient,
    required Future<String?> Function() tokenFetcher,
  }) =>
      RemoteNotificationRepository(
        apiClient: apiClient,
        tokenFetcher: tokenFetcher,
      );

  TaskEither<NotificationFailure, List<NotificationResponse>>
      getNotificationList({
    required String workspaceId,
    required List<NotificationRequestField> fields,
  });

  TaskEither<NotificationFailure, dynamic> createNotification({
    required String workspaceId,
    required String title,
    required String content,
    required List<ActionPayload> payloads,
  });
}
