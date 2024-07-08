import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'alchemist_query.dart';
import 'api_endpoint.dart';
import 'package:http/http.dart' as http;

abstract class ApiClient {
  const ApiClient();

  factory ApiClient.nvm({http.Client? httpClient}) =>
      _NvmApiClient(httpClient: httpClient);

  Future<T> requestJson<T>({
    required ApiEndpoint endpoint,
    String? workspaceId,
    String? authorization,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    bool refreshTokenOnUnauthorization = true,
    required T Function(dynamic) dataHandler,
  });

  void addOnUnauthorizationListener(VoidCallback listener);

  void removeOnUnauthorizationListener(VoidCallback listener);
}

class _NvmApiClient extends ApiClient {
  final http.Client _httpClient;
  final List<VoidCallback> _onUnauthorizationListeners;

  _NvmApiClient({
    http.Client? httpClient,
  })  : _httpClient = httpClient ?? http.Client(),
        _onUnauthorizationListeners = [];

  @override
  Future<T> requestJson<T>({
    required ApiEndpoint endpoint,
    String? workspaceId,
    String? authorization,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    bool refreshTokenOnUnauthorization = true,
    required T Function(dynamic) dataHandler,
  }) async {
    final endpointParams = endpoint.parseEndpointParams(
      workspaceId: workspaceId,
      authorization: authorization,
      alchemistQuery: alchemistQuery,
      uriParams: uriParams,
      headers: headers,
      payload: payload,
    );

    final uri = Uri.parse('${endpointParams.baseUrl}${endpointParams.uri}');

    debugPrint(uri.toString());

    try {
      final response = await _httpClient.post(
        uri,
        headers: endpointParams.headers,
        body: endpointParams.body,
      );

      if (response.statusCode >= 400) {
        if (response.statusCode == 401 && refreshTokenOnUnauthorization) {
          for (final listener in _onUnauthorizationListeners) {
            listener.call();
          }
        }
        throw AlchemistApiRequestFailure(
          body: _responseBodyToJson(response),
          statusCode: response.statusCode,
        );
      }

      final json = _responseBodyToJson(response);
      debugPrint(json.toString());
      return dataHandler(json);
    } on http.ClientException catch (error) {
      throw AlchemistApiRequestFailure(statusCode: -1, body: {
        // TODO: use localized string
        'message': 'Connection error',
      });
    }
  }

  dynamic _responseBodyToJson(http.Response response) {
    return jsonDecode(response.body);
  }

  @override
  void addOnUnauthorizationListener(VoidCallback listener) {
    _onUnauthorizationListeners.add(listener);
  }

  @override
  void removeOnUnauthorizationListener(VoidCallback listener) {
    _onUnauthorizationListeners.remove(listener);
  }
}

class AlchemistApiRequestFailure implements Exception {
  final Map<String, dynamic> body;

  /// Http status code, except -1 for connection error
  final int statusCode;

  AlchemistApiRequestFailure({
    required this.body,
    required this.statusCode,
  });
}
