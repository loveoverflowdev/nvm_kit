import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_resource_structure_failure.freezed.dart';

@freezed
class ActiveResourceStructureFailure
    with _$ActiveResourceStructureFailure
    implements Exception {
  ActiveResourceStructureFailure._();
  factory ActiveResourceStructureFailure.badRequest({required String message}) =
      _BadRequest;
  factory ActiveResourceStructureFailure.unauthorized() = _Unauthorized;
  factory ActiveResourceStructureFailure.internalServer() = _InternalServer;
  factory ActiveResourceStructureFailure.apiConnection() = _ApiConnection;
  factory ActiveResourceStructureFailure.unimplemented() = _Unimplemented;

  factory ActiveResourceStructureFailure.fromError(
    Object failure,
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
