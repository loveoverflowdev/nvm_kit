import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'roles_board_failure.freezed.dart';

@freezed
class RolesBoardFailure with _$RolesBoardFailure implements Exception {
  RolesBoardFailure._();
  factory RolesBoardFailure.badRequest({required String message, StackTrace? stackTrace,}) = _BadRequest;
  factory RolesBoardFailure.unauthorized({
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory RolesBoardFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory RolesBoardFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory RolesBoardFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;

  factory RolesBoardFailure.fromError(
    Object failure, {
      StackTrace? stackTrace,
    }
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => RolesBoardFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => RolesBoardFailure.unauthorized(),
        500 => RolesBoardFailure.internalServer(),
        -1 => RolesBoardFailure.internalServer(),
        _ => RolesBoardFailure.unimplemented(),
      };
    }
    return RolesBoardFailure.unimplemented();
  }
}
