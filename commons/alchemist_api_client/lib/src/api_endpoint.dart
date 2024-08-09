import 'dart:io';
import 'dart:convert';
import '../alchemist_api_client.dart';

class ApiEndpoint {
  static const String baseUrl = 'http://25.14.30.4:80';

  final String method;
  final String uriTemplate;
  RequestType? requestType;
  bool? requiredWorkspace;
  bool? requireId;
  bool? requiredAuthorization;
  bool? jsonPayload;

  ApiEndpoint({
    required this.uriTemplate,
    this.requestType,
    this.requiredWorkspace,
    this.requiredAuthorization,
    this.jsonPayload,
    this.requireId,
    this.method = 'POST',
  });

  EndpointParams parseEndpointParams({
    String? id,
    String? workspaceId,
    String? authorization,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
  }) {
    uriParams ??= {};
    requestType ??= RequestType.other;
    requiredWorkspace ??= false;
    requiredAuthorization ??= false;
    jsonPayload ??= false;

    headers ??= {};

    if (uriTemplate.isEmpty) {
      throw Exception('uriTemplate is cannot be empty');
    }

    if (requiredWorkspace == true) {
      if (workspaceId?.isNotEmpty != true) {
        throw Exception('workspaceId is required '
            '(because requiredWorkspace is true for endpoint $uriTemplate)');
      } else {
        uriParams['workspace_id'] = workspaceId;
      }
    }

    if (requireId == true) {
      if (id?.isNotEmpty != true) {
        throw Exception('Id is required '
            '(because requireId is true for endpoint $uriTemplate)');
      } else {
        uriParams['id'] = id;
      }
    }

    if (requiredAuthorization! &&
        (authorization == null || authorization.isEmpty)) {
      throw Exception('authorization is required '
          '(because requiredAuthorization is true for endpoint $uriTemplate)');
    }

    if (jsonPayload! && !_isValidJsonPayload(payload)) {
      throw Exception('payload accept only Map or String(json) or null '
          '(because jsonPayload is true for endpoint $uriTemplate)');
    }

    if (_isAlchemistRequestType(requestType) && alchemistQuery == null) {
      throw Exception('alchemistQuery is required \n(because requestType is '
          'RequestType.alchemistQueryList or RequestType.alchemistQueryOne '
          'for endpoint $uriTemplate');
    }

    if (requestType == RequestType.alchemistQueryOne) {
      _validateAlchemistQueryOne(alchemistQuery!);
    }

    if (authorization != null && authorization.isNotEmpty) {
      if (!requiredAuthorization!) {
        throw Exception('authorization is not required'
            '\n(because requiredAuthorization is false for endpoint $uriTemplate)');
      }

      headers.addAll(_buildBearerAuthroizationHeader(authorization));
    }

    if (jsonPayload!) {
      headers[HttpHeaders.contentTypeHeader] = ContentType.json.value;
      headers[HttpHeaders.acceptHeader] = ContentType.json.value;
    }

    return EndpointParams(
      uri: _buildUri(uriParams),
      method: method.toUpperCase(),
      headers: headers,
      body: _buildRequestBody(payload, alchemistQuery),
      baseUrl: baseUrl,
    );
  }

  String _buildUri(Map<String, dynamic> params) {
    var uri = uriTemplate;

    params.forEach((key, value) {
      if (!uri.contains(':$key')) {
        throw Exception(
            'param :$key is not present in uriTemplate ($uriTemplate)');
      }

      uri = uri.replaceAll(':$key', value.toString());
    });

    return uri;
  }

  Map<String, String> _buildBearerAuthroizationHeader(String authorization) {
    return {'Authorization': 'Bearer $authorization'};
  }

  String _buildRequestBody(dynamic payload, AlchemistQuery? alchemistQuery) {
    Map body = {};

    if (jsonPayload! && alchemistQuery != null) {
      body.addAll(alchemistQuery.serialize());
    }

    if (jsonPayload!) {
      body.addAll(_parseJsonPayload(payload));

      return jsonEncode(body);
    }

    return body.toString();
  }

  bool _isValidJsonPayload(dynamic payload) {
    if (payload == null) {
      return true;
    }

    if (payload is Map) {
      return true;
    }

    if (payload is String && payload.isEmpty) {
      return true;
    }

    if (_isJsonMap(payload)) {
      return true;
    }

    return false;
  }

  bool _isJsonMap(String data) {
    try {
      jsonDecode(data);
      // test map
      // ignore: unused_local_variable
      Map<dynamic, dynamic> map = jsonDecode(data);
      return true;
    } catch (e) {
      return false;
    }
  }

  Map _parseJsonPayload(dynamic payload) {
    if (payload == null) {
      return {};
    }

    if (payload is String && payload.isEmpty) {
      return {};
    }

    if (payload is Map) {
      return payload;
    }

    if (payload is String) {
      return json.decode(payload);
    }

    return {};
  }

  bool _isAlchemistRequestType(RequestType? requestType) {
    return (requestType == RequestType.alchemistQueryList ||
        requestType == RequestType.alchemistQueryOne);
  }

  void _validateAlchemistQueryOne(AlchemistQuery alchemistQuery) {
    if (alchemistQuery.search != '') {
      throw Exception('search is not valid param for alchemistQueryOne '
          '(because requestType is RequestType.alchemistQueryOne '
          'for endpoint $uriTemplate');
    }

    if (alchemistQuery.filtering.isNotEmpty) {
      throw Exception('filtering is not valid param for alchemistQueryOne '
          '(because requestType is RequestType.alchemistQueryOne '
          'for endpoint $uriTemplate');
    }

    if (alchemistQuery.orderBy.isNotEmpty) {
      throw Exception('orderBy is not valid param for alchemistQueryOne '
          '(because requestType is RequestType.alchemistQueryOne '
          'for endpoint $uriTemplate');
    }

    if (alchemistQuery.limit != 0) {
      throw Exception('limit is not valid param for alchemistQueryOne '
          '(because requestType is RequestType.alchemistQueryOne '
          'for endpoint $uriTemplate');
    }

    if (alchemistQuery.offset != 0) {
      throw Exception('offset is not valid param for alchemistQueryOne '
          '(because requestType is RequestType.alchemistQueryOne '
          'for endpoint $uriTemplate');
    }
  }
}
