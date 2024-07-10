import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../functions/functions.dart';

part 'providers.g.dart';

typedef NotificationListState = AsyncValue<List<NotificationBlock>>;

@riverpod
class NotificationList extends _$NotificationList {
  @override
  NotificationListState build() => NotificationListState.data(List.empty());

  void loadNotifications() {
    state = const AsyncValue.loading();

    getNotificationFunction().match((failure) {
      state = NotificationListState.error(
        failure.error,
        failure.stackTrace,
      );
    }, (notifications) {
      state = NotificationListState.data(notifications);
    }).run();
  }
}
