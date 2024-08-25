import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../active_resource_repository_provider.dart';

part 'active_resource_list_provider.g.dart';

// typedef ActiveResourceListState = AsyncValue<List<ActiveResource>>;

@riverpod
Future<List<ActiveResource>> activeResourceList(
  ActiveResourceListRef ref, {
  required String resourceCode,
}) {
  return getActiveResourceListTask(
    resourceCode: resourceCode,
  )
      .run(
        ref.read(activeResourceRepositoryProvider),
      )
      .then(
        (value) => value.fold((failure) => throw failure, (data) => data),
      );
  // return ref
  //     .read(activeResourceRepositoryProvider)
  //     .getProject(projectId: projectId)
  //     .run()
  //     .then(
  //   (project) {
  //     return project.fold(
  //       (failure) => throw failure,
  //       (data) => data,
  //     );
  //   },
  // );
}

// @riverpod
// class ActiveResourceList extends _$ActiveResourceList {
//   @override
//   ActiveResourceListState build() => ActiveResourceListState.data(List.empty());

//   void loadActiveResourceList({
//     required String resourceCode,
//   }) async {
//     state = const AsyncValue.loading();
//     getActiveResourceListTask(
//       resourceCode: resourceCode,
//     ).match(
//       (failure) {
//         state = ActiveResourceListState.error(
//           failure,
//           failure.stackTrace ?? StackTrace.current,
//         );
//       },
//       (result) {
//         state = ActiveResourceListState.data(
//           result,
//         );
//       },
//     ).run(
//       ref.read(activeResourceRepositoryProvider),
//     );
//   }
// }
