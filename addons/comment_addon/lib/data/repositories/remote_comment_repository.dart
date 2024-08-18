import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:comment_addon/domain.dart';
import 'package:fpdart/fpdart.dart';

import '../responses.dart';
import '../requests.dart';

final class RemoteCommentRepository implements CommentRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteCommentRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenProvider;

  @override
  TaskEither<CommentFailure, List<Comment>> getCommentList({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
    RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      // http://172.23.124.11:8001/api/workspaces/613272411067910808/active-resource/resources/tasks/664724104737195066/features/widget-comment/get/comments
      () async => _apiClient.requestJson(
        endpoint: ApiEndpoint(
          uriTemplate:
              '/api/workspaces/:workspace_id/active-resource/resources/:resource_code/:resource_id/features/widget-comment/get/comments',
          requiredAuthorization: true,
          jsonPayload: true,
        ),
        alchemistQuery: AlchemistQuery(
          requestField: requestField ?? CommentRequestField.all,
        ),
        workspaceId: workspaceId,
        authorization: await _tokenProvider(),
        uriParams: {
          'resource_code': resourceCode,
          'resource_id': resourceId,
        },
        dataHandler: (json) => (json['data'] as List)
            .map(
              (e) => _mapResponse(CommentResponse.fromJson(e)),
            )
            .toList(),
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
