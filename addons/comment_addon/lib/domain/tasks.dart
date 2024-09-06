import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<CommentRepository, CommentFailure, List<Comment>>
    getCommentListTask({
  required String activeStructureCode,
  required String resourceId,
  required int limit,
  int? offset,
  String? requestField,
}) {
  return ReaderTaskEither(
    (repository) {
      return repository
          .getCommentList(
            limit: limit,
            offset: offset,
            activeStructureCode: activeStructureCode,
            resourceId: resourceId,
            requestField: requestField,
          )
          .run();
    },
  );
}

ReaderTaskEither<CommentRepository, CommentFailure, void> createCommentTask({
  required String activeStructureCode,
  required String resourceId,
  required CommentPayload payload,
}) {
  return ReaderTaskEither(
    (repository) {
      return repository
          .createComment(
            activeStructureCode: activeStructureCode,
            resourceId: resourceId,
            payload: payload,
          )
          .run();
    },
  );
}
