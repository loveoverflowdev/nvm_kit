import 'package:alchemist_api_client/alchemist_api_client.dart';

abstract class ActiveResourceFailure {
  const ActiveResourceFailure();

  factory ActiveResourceFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      switch (failure.statusCode) {
        case 400:
          return ActiveResourceBadRequestFailure(
            message: failure.body['message'],
          );
        case 401:
          return ActiveResourceUnauthorizedFailure();
        case 500:
          return ActiveResourceServerInternalFailure();
        case -1:
          return ActiveResourceApiConnectionFailure();
        default:
          return ActiveResourceUnimplementedFailure();
      }
    }
    return ActiveResourceUnimplementedFailure();
  }
}

class ActiveResourceUnauthorizedFailure extends ActiveResourceFailure {}

class ActiveResourceBadRequestFailure extends ActiveResourceFailure {
  ActiveResourceBadRequestFailure({
    this.message,
  });

  final String? message;
}

class ActiveResourceServerInternalFailure extends ActiveResourceFailure {}

class ActiveResourceNotFoundFailure extends ActiveResourceFailure {}

class ActiveResourceApiConnectionFailure implements ActiveResourceFailure {}

class ActiveResourceUnimplementedFailure extends ActiveResourceFailure {}
