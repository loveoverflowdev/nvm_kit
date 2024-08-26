import 'dart:convert';

import 'package:flutter/foundation.dart' show debugPrint;
import 'package:http/http.dart' as http;

import 'alchemist_api_request_failure.dart';
import 'alchemist_query.dart';
import 'api_endpoint.dart';

final class AlchemistApiClient {
  final http.Client _httpClient;

  AlchemistApiClient({
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  Future<T> requestJson<T>({
    required ApiEndpoint endpoint,
    String? workspaceId,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    bool refreshTokenOnUnauthorization = true,
    String? authorization,
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

    debugPrint('Uri: $uri');
    debugPrint('Params: $uriParams');
    debugPrint('Body: ${endpointParams.body}');

    try {
      final response = await _httpClient.post(
        uri,
        headers: endpointParams.headers,
        body: endpointParams.body,
      );

      if (response.statusCode >= 400) {
        if (response.statusCode == 401 && refreshTokenOnUnauthorization) {
          // for (final listener in _onUnauthorizationListeners) {
          //   listener.call();
          // }
        }
        throw AlchemistApiRequestFailure(
          body: _responseBodyToJson(response),
          statusCode: response.statusCode,
        );
      }

      final json = _responseBodyToJson(response);
      debugPrint(json.toString());
      return dataHandler(json);
    } on http.ClientException catch (_) {
      throw AlchemistApiRequestFailure(statusCode: -1, body: {
        // TODO: use localized string
        'message': 'Connection error',
      });
    }
  }

  dynamic _responseBodyToJson(http.Response response) {
    return jsonDecode(response.body);
  }
}
