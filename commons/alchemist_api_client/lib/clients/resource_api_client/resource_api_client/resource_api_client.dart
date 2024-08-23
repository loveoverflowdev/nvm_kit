import '../../alchemist_api_client.dart';
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
    return _alchemistApiClient.requestJson(
      authorization: await _tokenProvider(),
      id: id,
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
