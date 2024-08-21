import '../alchemist_api_client.dart';

final class ResourceApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final Future<String?> Function() _tokenProvider;

  ResourceApiClient({
    required AlchemistApiClient alchemistApiClient,
    required Future<String?> Function() tokenProvider,
  }) : 
    _alchemistApiClient = alchemistApiClient, 
    _tokenProvider = tokenProvider;

  Future<T> requestJson<T>({
    required ApiEndpoint endpoint,
    String? workspaceId,
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
