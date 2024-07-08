class EndpointParams {
  final String uri;
  final String method;
  final Map<String, String> headers;
  final dynamic body;
  final String baseUrl;

  EndpointParams({
    required this.uri,
    required this.method,
    required this.headers,
    required this.body,
    required this.baseUrl,
  });
}
