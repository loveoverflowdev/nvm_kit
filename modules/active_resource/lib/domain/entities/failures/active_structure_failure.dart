import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_failure/app_failure.dart';

part 'active_structure_failure.freezed.dart';

@freezed
class ActiveStructureFailure
    with _$ActiveStructureFailure
    implements AppFailure {
  ActiveStructureFailure._();

  @override
  bool get isUnauthorized => this is _Unauthorized;

  factory ActiveStructureFailure.badRequest({
    required String message,
    StackTrace? stackTrace,
  }) = _BadRequest;
  factory ActiveStructureFailure.unauthorized({
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory ActiveStructureFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory ActiveStructureFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory ActiveStructureFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;

  factory ActiveStructureFailure.fromError(
    Object failure, {
    StackTrace? stackTrace,
  }) {
    if (failure is AlchemistApiRequestFailure) {
      print('--------------------## $failure');
      return switch (failure.statusCode) {
        400 => ActiveStructureFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => ActiveStructureFailure.unauthorized(),
        500 => ActiveStructureFailure.internalServer(),
        -1 => ActiveStructureFailure.internalServer(),
        _ => ActiveStructureFailure.unimplemented(),
      };
    }
    print('-------------------- $failure');
    return ActiveStructureFailure.unimplemented();
  }

  @override
  StackTrace? get stackTrace => when(
        badRequest: (_, stackTrace) => stackTrace,
        internalServer: (stackTrace) => stackTrace,
        apiConnection: (stackTrace) => stackTrace,
        unimplemented: (stackTrace) => stackTrace,
        unauthorized: (stackTrace) => stackTrace,
      );
}
