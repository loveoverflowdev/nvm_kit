import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<CommentRepository, CommentFailure, List<Comment>>
    getCommentListTask({
  required String resourceCode,
  required String resourceId,
}) {
  return ReaderTaskEither(
    (repository) {
      return repository
          .getCommentList(
            resourceCode: resourceCode,
            resourceId: resourceId,
          )
          .run();
    },
  );
}
