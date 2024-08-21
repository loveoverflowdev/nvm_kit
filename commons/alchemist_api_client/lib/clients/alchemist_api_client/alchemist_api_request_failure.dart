class AlchemistApiRequestFailure implements Exception {
  final Map<String, dynamic> body;

  /// Http status code, except -1 for connection error
  final int statusCode;

  AlchemistApiRequestFailure({
    required this.body,
    required this.statusCode,
  });
}
