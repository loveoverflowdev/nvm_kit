import 'package:alchemist_api_client/alchemist_api_client.dart'
    show AlchemistApiRequestFailure;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'project_failure.freezed.dart';

@freezed
class ProjectFailure with _$ProjectFailure implements Exception {
  ProjectFailure._();
  factory ProjectFailure.badRequest({required String message}) = _BadRequest;
  factory ProjectFailure.unauthorized() = _Unauthorized;
  factory ProjectFailure.internalServer() = _InternalServer;
  factory ProjectFailure.apiConnection() = _ApiConnection;
  factory ProjectFailure.unimplemented({
    required Object error,
  }) = _Unimplemented;

  @override
  String toString() {
    if (this is _BadRequest) {
      return (this as _BadRequest).message;
    }
    return super.toString();
  }

  factory ProjectFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => ProjectFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => ProjectFailure.unauthorized(),
        500 => ProjectFailure.internalServer(),
        -1 => ProjectFailure.internalServer(),
        _ => ProjectFailure.unimplemented(error: failure),
      };
    }
    debugPrint('ProjectFailure: $failure');
    return ProjectFailure.unimplemented(error: failure);
  }
}
