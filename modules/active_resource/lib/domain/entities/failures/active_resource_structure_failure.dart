import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_resource_structure_failure.freezed.dart';

@freezed
class ActiveResourceStructureFailure
    with _$ActiveResourceStructureFailure
    implements Exception {
  ActiveResourceStructureFailure._();
  factory ActiveResourceStructureFailure.badRequest({required String message, StackTrace? stackTrace,}) =
      _BadRequest;
  factory ActiveResourceStructureFailure.unauthorized({
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory ActiveResourceStructureFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory ActiveResourceStructureFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory ActiveResourceStructureFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;

  factory ActiveResourceStructureFailure.fromError(
    Object failure, {
      StackTrace? stackTrace,
    }
  ) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => ActiveResourceStructureFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => ActiveResourceStructureFailure.unauthorized(),
        500 => ActiveResourceStructureFailure.internalServer(),
        -1 => ActiveResourceStructureFailure.internalServer(),
        _ => ActiveResourceStructureFailure.unimplemented(),
      };
    }
    return ActiveResourceStructureFailure.unimplemented();
  }
}
