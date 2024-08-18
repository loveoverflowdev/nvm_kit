import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class CommentRepository {
  TaskEither<CommentFailure, List<Comment>> getCommentList({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
    RequestField? requestField,
  });
}
