import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;

import '../resource_api_client.dart';
import 'requests.dart';
import 'responses.dart';

extension NotificationApiClientExt on ResourceApiClient {
  Future<List<NotificationResponse>> getNotificationList({
    String? requestField,
  }) async {
    return requestJson(
      endpoint: endpoints.getNotificationList(),
      dataHandler: (json) => (json['data'] as List? ?? [])
          .map(
            (e) => NotificationResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<NotificationResponse> getNotification({
    required String notificationId,
    String? requestField,
  }) async {
    return requestJson(
      endpoint: endpoints.getOneNotification(notificationId: notificationId),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? NotificationRequestField.all.build(),
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
      endpoint: endpoints.createNotification(),
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
