import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;
import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<CommentRepository, CommentFailure, List<Comment>>
    getCommentListTask({
  required String workspaceId,
  required String resourceCode,
  required String resourceId,
  RequestField? requestField,
}) {
  return ReaderTaskEither(
    (repository) {
      return repository
          .getCommentList(
            workspaceId: workspaceId,
            resourceCode: resourceCode,
            resourceId: resourceId,
            requestField: requestField,
          )
          .run();
    },
  );
}
