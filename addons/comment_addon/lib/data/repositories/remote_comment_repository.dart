import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:comment_addon/domain.dart';
import 'package:fpdart/fpdart.dart';

final class RemoteCommentRepository implements CommentRepository {
  final api.CommentApiClient _apiClient;

  RemoteCommentRepository({
    required api.CommentApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<CommentFailure, List<Comment>> getCommentList({
    required String resourceCode,
    required String resourceId,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient
          .getCommentList(
            resourceCode: resourceCode,
            resourceId: resourceId,
          )
          .then(
            (value) => value.map(_mapResponse).toList(),
          ),
      (error, stackTrace) => CommentFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<CommentFailure, void> createComment({
    required CommentPayload payload,
    required String resourceCode,
    required String resourceId,
  }) {
    return TaskEither.tryCatch(
      () async {
        _apiClient.createComment(
          resourceCode: resourceCode, 
          resourceId: resourceId, 
          payload: api.CommentPayload(
            topic: payload.topic, 
            title: payload.title, 
            content: payload.content,
          ),
        );
      }, 
      (error, stackTrace) => CommentFailure.fromError(error, stackTrace: stackTrace),
    );
  }

  Comment _mapResponse(api.CommentResponse response) {
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
