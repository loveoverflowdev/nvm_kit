import 'package:notification/data.dart';
import 'package:notification/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_repository_provider.g.dart';

@riverpod
NotificationRepository notificationRepository(NotificationRepositoryRef ref) {
  return RemoteNotificationRepository();
}
