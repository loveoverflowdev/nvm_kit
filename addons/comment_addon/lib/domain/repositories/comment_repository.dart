import 'package:fpdart/fpdart.dart';
import '../entities.dart';

abstract interface class CommentRepository {
  TaskEither<CommentFailure, List<Comment>> getCommentList({
    required String activeStructureCode,
    required String resourceId,
  });

  TaskEither<CommentFailure, void> createComment({
    required CommentPayload payload,
    required String activeStructureCode,
    required String resourceId,
  });
}
