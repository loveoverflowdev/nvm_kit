import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;

import '../../token_provider.dart';
import '../../workspace_id_provider.dart';
import 'requests.dart';
import 'responses.dart';

final class CommentApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenProvider _tokenProvider;
  final WorkspaceIdProvider _workspaceIdProvider;

  CommentApiClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenProvider tokenProvider,
    required WorkspaceIdProvider workspaceIdProvider,
  })  : _alchemistApiClient = alchemistApiClient,
        _tokenProvider = tokenProvider,
        _workspaceIdProvider = workspaceIdProvider;

  Future<CommentResponse> getComment({
    required String commentId,
    required String activeStructureCode,
    required String resourceId,
  }) async {
    // endpoints.getCo
    // {{domain}}/api/workspaces/{{workspace}}/active-module/resources/tasks/664724104737195066/features/widget-comment/get/comments
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-module/resources/$activeStructureCode/$resourceId/features/widget-comment/get/comments/:id',
        requiredWorkspace: true,
        requiredAuthorization: true,
      ),
      id: commentId,
      dataHandler: (json) => CommentResponse.fromJson(json['data']),
    );
  }

  Future<List<CommentResponse>> getCommentList({
    required String activeStructureCode,
    required String resourceId,
  }) async {
    // {{domain}}/api/workspaces/{{workspace}}/active-module/resources/tasks/664724104737195066/features/widget-comment/get/comments
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-module/resources/$activeStructureCode/$resourceId/features/widget-comment/get/comments',
        requiredWorkspace: true,
        requiredAuthorization: true,
      ),
      dataHandler: (json) => (json['data'] as List)
          .map((e) => CommentResponse.fromJson(e))
          .toList(),
    );
  }

  Future<void> createComment({
    required String activeStructureCode,
    required String resourceId,
    required CommentPayload payload,
  }) async {
    return _requestJson(
      endpoint: ApiEndpoint(
        uriTemplate:
            '/api/workspaces/:workspace_id/active-module/resources/$activeStructureCode/$resourceId/features/widget-comment/post/comments',
        requiredWorkspace: true,
        requiredAuthorization: true,
        jsonPayload: true,
      ),
      payload: payload.toJson(),
      dataHandler: (json) => {},
    );
  }

  Future<T> _requestJson<T>({
    required ApiEndpoint endpoint,
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
      endpoint: endpoint,
      workspaceId: await _workspaceIdProvider(),
      alchemistQuery: alchemistQuery,
      uriParams: uriParams,
      payload: payload,
      headers: headers,
      refreshTokenOnUnauthorization: refreshTokenOnUnauthorization,
      dataHandler: dataHandler,
    );
  }
}
