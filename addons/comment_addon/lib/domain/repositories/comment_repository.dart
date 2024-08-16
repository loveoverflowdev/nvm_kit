import 'package:comment_addon/domain/entities/failures/comment_failure.dart';
import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class CommentRepository {
  TaskEither<CommentFailure, List<Comment>> getCommentList();
}
