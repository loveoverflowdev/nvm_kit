import 'package:comment_addon/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../comment_repository_provider.dart';

part 'comment_preview_list_provider.g.dart';

@riverpod
Future<List<Comment>> commentPreviewList(
  CommentPreviewListRef ref, {
  required String activeStructureCode,
  required String resourceId,
  required int limit,
}) {
  return getCommentListTask(
    activeStructureCode: activeStructureCode,
    resourceId: resourceId,
    limit: limit,
  )
      .run(
        ref.read(commentRepositoryProvider),
      )
      .then(
        (value) => value.fold(
          (failure) => throw failure,
          (comments) => comments,
        ),
      );
}
