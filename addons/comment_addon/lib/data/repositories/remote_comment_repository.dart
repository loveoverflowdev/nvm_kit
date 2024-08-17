import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:comment_addon/domain.dart';
import 'package:fpdart/fpdart.dart';

final class RemoteCommentRepository implements CommentRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteCommentRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenProvider;

  @override
  TaskEither<CommentFailure, List<Comment>> getCommentList() {
    TaskEither.tryCatch(
      // http://172.23.124.11:8001/api/workspaces/613272411067910808/active-resource/resources/tasks/664724104737195066/features/widget-comment/get/comments
      () async => _apiClient.requestJson(
        endpoint: ApiEndpoint(
          uriTemplate:
              '/api/workspaces/:workspace_id/active-resource/resources/tasks',
          requiredAuthorization: true,
          jsonPayload: true,
        ),
        workspaceId: workspaceId,
        authorization: await _tokenProvider(),
        payload: {
          'notificationTitle': title,
          'notificationContent': content,
          'actions': [
            for (final payload in payloads) payload.toJson(),
          ],
        },
        dataHandler: (json) => _mapResponse(
          NotificationResponse.fromJson(json['data']),
        ),
      ),
      (error, stackTrace) => NotificationFailure.fromError(error),
    );
  }
}
