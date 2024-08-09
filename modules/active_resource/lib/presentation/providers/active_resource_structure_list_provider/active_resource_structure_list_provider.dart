import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


typedef ActiveResourceStructureListState = AsyncValue<ActiveResourceStructure?>;

@riverpod
class ActiveResourceStructureList extends _$ActiveResourceStructureList {
  @override
  ActiveResourceStructureListState build() => ActiveResourceStructureListState.data(List.empty());

  void loadActiveResourceList() async {
    state = const AsyncValue.loading();

    getActiveResourceListTask()
      .match(
        (failure) {
          state = ActiveResourceStructureListState.error(
            failure,
            StackTrace.current,
          );
        }, (result) {
          state = ActiveResourceStructureListState.data(
            result,
          );
        },
      )
      .run(
        ref.read(activeResourceStructureRepositoryProvider),
      );

    // getNotificationList(
    //   workspaceId: await workspaceIdFetcher(),
    // ).match(
    //   (failure) {
    //     state = NotificationListState.error(
    //       failure,
    //       StackTrace.current,
    //     );
    //   },
    //   (response) {
    //     state = NotificationListState.data(response);
    //   },
    // ).run(
    //   ref.read(notificationRepositoryProvider),
    // );
  }
}
