import 'package:comment_addon/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../comment_repository_provider/comment_repository_provider.dart';

part 'comment_list_provider.g.dart';

@riverpod
Future<List<Comment>> commentList(
  CommentListRef ref, {
  required String resourceCode,
  required String resourceId,
}) {
  return getCommentListTask(
    resourceCode: resourceCode,
    resourceId: resourceId,
  )
      .run(
        ref.read(commentRepositoryProvider),
      )
      .then(
        (value) => value.fold((failure) => throw failure, (data) => data),
      );
}


// typedef CommentListState = AsyncValue<List<Comment>>;

// @riverpod
// class CommentList extends _$CommentList {
//   @override
//   CommentListState build() => CommentListState.data(List.empty());

//   void loadCommentList() async {
//     state = const AsyncValue.loading();

//     getCommentListTask(
//       resourceCode: '',
//       resourceId: '',
//     ).match(
//       (failure) {
//         state = CommentListState.error(
//           failure,
//           StackTrace.current,
//         );
//       },
//       (response) {
//         state = CommentListState.data(response);
//       },
//     ).run(
//       ref.read(commentRepositoryProvider),
//     );
//   }
// }
