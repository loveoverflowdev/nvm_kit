import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:fpdart/fpdart.dart';

import 'package:notification/domain.dart';

class RemoteNotificationRepository implements NotificationRepository {
  final api.ResourceApiClient _apiClient;

  RemoteNotificationRepository({
    required api.ResourceApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<NotificationFailure, void> createNotification({
    required String title,
    required String content,
    required List<NotificationActionInput> inputs,
  }) =>
      TaskEither.tryCatch(
        () async => _apiClient.createNotification(
          title: title,
          content: content,
          payloads: inputs.map(_mapInput).toList(),
        ),
        (error, stackTrace) => NotificationFailure.fromError(error),
      );

  @override
  TaskEither<NotificationFailure, List<Notification>> getNotificationList() =>
      TaskEither.tryCatch(
        () async => _apiClient.getNotificationList().then(
              (value) => value.map(_mapResponse).toList(),
            ),
        (error, stackTrace) => NotificationFailure.fromError(error),
      );

  api.NotificationActionPayload _mapInput(NotificationActionInput input) {
    return api.NotificationActionPayload(
      actionName: input.actionName,
      actionType: input.actionType,
      url: input.url,
      actionColor: input.actionColor,
      actionStatus: input.actionStatus,
    );
  }

  Notification _mapResponse(api.NotificationResponse response) {
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
