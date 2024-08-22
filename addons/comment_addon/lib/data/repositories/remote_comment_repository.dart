import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:comment_addon/domain.dart';
import 'package:fpdart/fpdart.dart';

final class RemoteCommentRepository implements CommentRepository {
  final CommentApiClient _apiClient;

  RemoteCommentRepository({
    required CommentApiClient apiClient,
  })  : _apiClient = apiClient;

  @override
  TaskEither<CommentFailure, List<Comment>> getCommentList({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient.getCommentList(
        workspaceId: workspaceId, resourceCode: resourceCode, resourceId: resourceId,
      ).then(
        (value) => value.map(_mapResponse).toList(),
      ),
      (error, stackTrace) => CommentFailure.fromError(error),
    );
  }

  Comment _mapResponse(CommentResponse response) {
    return Comment(
      id: response.id,
      topic: response.topic,
      subjectType: response.subjectType,
      commentType: response.commentType,
      subjectId: response.subjectId,
      commentTitle: response.commentTitle,
      commentContent: response.commentContent,
      createdBy: response.createdBy,
      createdByUser: response.createdByUser,
    );
  }
}
