library app_failure;

abstract interface class AppFailure implements Exception {
  bool get isUnauthorized;
}
