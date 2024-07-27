import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_notification/nvm_notification.dart';
import '../../functions/functions.dart';

part 'providers.g.dart';

Future<String?> tokenFetcher() async {
  return '';
}

@riverpod
NotificationRepository notificationRepository(NotificationRepositoryRef ref) {
  return NotificationRepository.remote(
    apiClient: ApiClient.nvm(),
    tokenFetcher: tokenFetcher,
  );
}

typedef NotificationListState = AsyncValue<List<NotificationBlock>>;

@riverpod
class NotificationList extends _$NotificationList {
  @override
  NotificationListState build() => NotificationListState.data(List.empty());

  void loadNotifications({
    required Future<String> Function() workspaceIdFetcher,
  }) async {
    state = const AsyncValue.loading();

    getNotificationList(
      workspaceId: await workspaceIdFetcher(),
    ).match(
      (failure) {
        state = NotificationListState.error(
          failure,
          StackTrace.current,
        );
      },
      (response) {
        state = NotificationListState.data(response);
      },
    ).run(
      ref.read(notificationRepositoryProvider),
    );
  }
}
