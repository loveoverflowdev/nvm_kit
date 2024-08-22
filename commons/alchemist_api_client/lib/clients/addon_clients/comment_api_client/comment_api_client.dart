
import '../../alchemist_api_client.dart';
import '../../token_provider.dart';
import 'requests.dart';
import 'responses.dart';

final class CommentApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenProvider _tokenProvider;

  CommentApiClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenProvider tokenProvider,
  }) : 
  _alchemistApiClient = alchemistApiClient, 
  _tokenProvider = tokenProvider;

  Future<CommentResponse> getComment({
    required String commentId,
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
  }) async {
    // {{domain}}/api/workspaces/{{workspace}}/active-resource/resources/tasks/664724104737195066/features/widget-comment/get/comments
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-resource/resources/$resourceCode/$resourceId/features/widget-comment/get/comments/:id',
        requireId: true,
        requiredWorkspace: true,
        requiredAuthorization: true,
      ),
      workspaceId: workspaceId,
      id: commentId, 
      dataHandler: (json) => CommentResponse.fromJson(json),
    );
  }

  Future<List<CommentResponse>> getCommentList({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
  }) async {
    // {{domain}}/api/workspaces/{{workspace}}/active-resource/resources/tasks/664724104737195066/features/widget-comment/get/comments
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-resource/resources/$resourceCode/$resourceId/features/widget-comment/get/comments',
        requiredWorkspace: true,
        requiredAuthorization: true,
      ),
      workspaceId: workspaceId,
      dataHandler: (json) => (json['data'] as List).map((e) => CommentResponse.fromJson(e)).toList(),
    );
  }

  Future<void> createComment({
    required String workspaceId,
    required String resourceCode,
    required String resourceId,
    required CommentPayload payload,
  }) async {
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-resource/resources/$resourceCode/$resourceId/features/widget-comment/post/comments',
        requiredWorkspace: true,
        requiredAuthorization: true,
        jsonPayload: true,
      ),
      payload: payload.toJson(),
      workspaceId: workspaceId,
      dataHandler: (json) => {},
    );
  }

  Future<T> _requestJson<T>({
    required ApiEndpoint endpoint,
    String? workspaceId,
    String? id,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    bool refreshTokenOnUnauthorization = true,
    required T Function(dynamic) dataHandler,
  }) async {
    return _alchemistApiClient.requestJson(
      authorization: await _tokenProvider(),
      id: id,
      endpoint: endpoint,
      workspaceId: workspaceId,
      alchemistQuery: alchemistQuery,
      uriParams: uriParams,
      payload: payload,
      headers: headers,
      refreshTokenOnUnauthorization: refreshTokenOnUnauthorization,
      dataHandler: dataHandler,
    );
  }
}
