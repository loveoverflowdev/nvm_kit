import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<CommentRepository, CommentFailure, List<Comment>>
    getCommentListTask({
  required String activeStructureCode,
  required String resourceId,
}) {
  return ReaderTaskEither(
    (repository) {
      return repository
          .getCommentList(
            activeStructureCode: activeStructureCode,
            resourceId: resourceId,
          )
          .run();
    },
  );
}
