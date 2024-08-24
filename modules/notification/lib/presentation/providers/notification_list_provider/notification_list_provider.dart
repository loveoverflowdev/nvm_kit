import 'package:notification/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../notification_repository_provider.dart';

part 'notification_list_provider.g.dart';

typedef NotificationListState = AsyncValue<List<Notification>>;

@riverpod
class NotificationList extends _$NotificationList {
  @override
  NotificationListState build() => NotificationListState.data(List.empty());

  void loadNotificationList() async {
    state = const AsyncValue.loading();

    getNotificationListTask().match(
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
