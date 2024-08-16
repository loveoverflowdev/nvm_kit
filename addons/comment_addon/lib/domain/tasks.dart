import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<CommentRepository, CommentFailure, List<Comment>>
    getCommentListTask() {
  return ReaderTaskEither(
    (repository) {
      return repository.getCommentList().run();
    },
  );
}
