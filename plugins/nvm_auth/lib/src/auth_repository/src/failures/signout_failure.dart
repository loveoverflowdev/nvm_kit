import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signout_failure.freezed.dart';

@freezed
class SignoutFailure with _$SignoutFailure {
  SignoutFailure._();
  factory SignoutFailure.badRequest({required String message}) = _BadRequest;
  factory SignoutFailure.unauthorized() = _Unauthorized;
  factory SignoutFailure.internalServer() = _InternalServer;
  factory SignoutFailure.apiConnection() = _ApiConnection;
  factory SignoutFailure.unimplemented() = _Unimplemented;

  factory SignoutFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => SignoutFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => SignoutFailure.unauthorized(),
        500 => SignoutFailure.internalServer(),
        -1 => SignoutFailure.internalServer(),
        _ => SignoutFailure.unimplemented(),
      };
    }
    return SignoutFailure.unimplemented();
  }
}
