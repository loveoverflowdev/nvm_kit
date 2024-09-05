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
    required String activeStructureCode,
    required String resourceId,
    required int limit,
    String? requestField,
  }) {
    return TaskEither.tryCatch(
      () async => _apiClient
          .getCommentList(
            activeStructureCode: activeStructureCode,
            resourceId: resourceId,
            requestField: requestField,
            limit: limit,
          )
          .then(
            (value) => value.map(_mapResponse).toList(),
          ),
      (error, stackTrace) => CommentFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  @override
  TaskEither<CommentFailure, void> createComment({
    required CommentPayload payload,
    required String activeStructureCode,
    required String resourceId,
  }) {
    return TaskEither.tryCatch(
      () async {
        _apiClient.createComment(
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
          payload: api.CommentPayload(
            topic: payload.topic,
            title: '',
            content: payload.content.value,
          ),
        );
      },
      (error, stackTrace) => CommentFailure.fromError(
        error,
        stackTrace: stackTrace,
      ),
    );
  }

  Comment _mapResponse(api.CommentResponse response) {
    return Comment(
      id: response.id ?? '',
      topic: response.topic ?? '',
      subjectType: response.subjectType ?? '',
      commentType: response.commentType ?? '',
      subjectId: response.subjectId ?? '',
      commentTitle: response.commentTitle ?? '',
      commentContent: response.commentContent,
      createdByUser: CommentedUser(
        id: response.createdByUser?.id ?? '',
        fullName: response.createdByUser?.fullName ?? '',
      ),
    );
  }
}
