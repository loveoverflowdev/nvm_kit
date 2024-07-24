import 'package:alchemist_api_client/alchemist_api_client.dart';

abstract class ActiveResourceStructureFailure {
  const ActiveResourceStructureFailure();

  factory ActiveResourceStructureFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      switch (failure.statusCode) {
        case 400:
          return ActiveResourceStructureBadRequestFailure(
            message: failure.body['message'],
          );
        case 401:
          return ActiveResourceStructureUnauthorizedFailure();
        case 500:
          return ActiveResourceStructureServerInternalFailure();
        case -1:
          return ActiveResourceStructureApiConnectionFailure();
        default:
          return ActiveResourceStructureUnimplementedFailure();
      }
    }
    return ActiveResourceStructureUnimplementedFailure();
  }
}

class ActiveResourceStructureUnauthorizedFailure
    extends ActiveResourceStructureFailure {}

class ActiveResourceStructureBadRequestFailure
    extends ActiveResourceStructureFailure {
  ActiveResourceStructureBadRequestFailure({
    this.message,
  });

  final String? message;
}

class ActiveResourceStructureServerInternalFailure
    extends ActiveResourceStructureFailure {}

class ActiveResourceStructureNotFoundFailure
    extends ActiveResourceStructureFailure {}

class ActiveResourceStructureApiConnectionFailure
    implements ActiveResourceStructureFailure {}

class ActiveResourceStructureUnimplementedFailure
    extends ActiveResourceStructureFailure {}
