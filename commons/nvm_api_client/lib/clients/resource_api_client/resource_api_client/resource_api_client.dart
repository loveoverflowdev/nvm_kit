import 'package:flutter/foundation.dart';

import 'package:alchemist_api_client/alchemist_api_client.dart';
import '../../token_provider.dart';
import '../../workspace_id_provider.dart';

final class ResourceApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenProvider _tokenProvider;
  final WorkspaceIdProvider _workspaceIdProvider;

  ResourceApiClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenProvider tokenProvider,
    required WorkspaceIdProvider workspaceIdProvider,
  })  : _alchemistApiClient = alchemistApiClient,
        _tokenProvider = tokenProvider,
        _workspaceIdProvider = workspaceIdProvider;

  Future<T> requestJson<T>({
    required ApiEndpoint endpoint,
    String? id,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    bool refreshTokenOnUnauthorization = true,
    required T Function(dynamic) dataHandler,
  }) async {
    final workspaceId = await _workspaceIdProvider();
    final token = await _tokenProvider();
    debugPrint('requestJson - workspaceId: ${workspaceId ?? ''}');
    debugPrint('requestJson - token: ${token ?? ''}');
    return _alchemistApiClient.requestJson(
      authorization: token,
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
