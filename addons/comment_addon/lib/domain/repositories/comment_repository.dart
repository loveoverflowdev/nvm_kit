import 'package:fpdart/fpdart.dart';
import '../entities.dart';

abstract interface class CommentRepository {
  TaskEither<CommentFailure, List<Comment>> getCommentList({
    required String resourceCode,
    required String resourceId,
  });

  TaskEither<CommentFailure, void> createComment({
    required CommentPayload payload,
    required String resourceCode,
    required String resourceId,
  });
}
