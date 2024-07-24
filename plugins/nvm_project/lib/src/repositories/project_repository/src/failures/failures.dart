import 'package:alchemist_api_client/alchemist_api_client.dart';

abstract class ProjectFailure {
  const ProjectFailure();

  factory ProjectFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      switch (failure.statusCode) {
        case 400:
          return ProjectBadRequestFailure(
            message: failure.body['message'],
          );
        case 401:
          return ProjectUnauthorizedFailure();
        case 500:
          return ProjectServerInternalFailure();
        case -1:
          return ProjectApiConnectionFailure();
        default:
          return ProjectUnimplementedFailure();
      }
    }
    return ProjectUnimplementedFailure();
  }
}

class ProjectUnauthorizedFailure extends ProjectFailure {}

class ProjectBadRequestFailure extends ProjectFailure {
  ProjectBadRequestFailure({
    this.message,
  });

  final String? message;
}

class ProjectServerInternalFailure extends ProjectFailure {}

class NotificationNotFoundFailure extends ProjectFailure {}

class ProjectApiConnectionFailure implements ProjectFailure {}

class ProjectUnimplementedFailure extends ProjectFailure {}
