import 'package:alchemist_api_client/alchemist_api_client.dart'
    show AlchemistApiRequestFailure;
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
class UserFailure with _$UserFailure implements Exception {
  UserFailure._();

  factory UserFailure.userIdMissing({
    StackTrace? stackTrace,
  }) = _UserIdMissing;

  factory UserFailure.badRequest({
    required String message,
    StackTrace? stackTrace,
  }) = _BadRequest;
  factory UserFailure.unauthorized({
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory UserFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory UserFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory UserFailure.unimplemented({
    required Object error,
    StackTrace? stackTrace,
  }) = _Unimplemented;

  @override
  StackTrace? get stackTrace => when(
        userIdMissing: (stackTrace) => stackTrace,
        badRequest: (_, stackTrace) => stackTrace,
        internalServer: (stackTrace) => stackTrace,
        apiConnection: (stackTrace) => stackTrace,
        unimplemented: (_, stackTrace) => stackTrace,
        unauthorized: (stackTrace) => stackTrace,
      );

  @override
  String toString() {
    if (this is _BadRequest) {
      return (this as _BadRequest).message;
    }
    return super.toString();
  }

  factory UserFailure.fromError(
    Object failure, {
    StackTrace? stackTrace,
  }) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => UserFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => UserFailure.unauthorized(),
        500 => UserFailure.internalServer(),
        -1 => UserFailure.internalServer(),
        _ => UserFailure.unimplemented(error: failure),
      };
    }
    debugPrint('UserFailure: $failure');
    return UserFailure.unimplemented(error: failure);
  }
}
