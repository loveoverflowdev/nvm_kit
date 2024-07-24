import 'package:alchemist_api_client/alchemist_api_client.dart';

abstract class WorkspaceFailure {
  const WorkspaceFailure();

  factory WorkspaceFailure.fromError(
    Object failure,
  ) {
    if (failure is AlchemistApiRequestFailure) {
      switch (failure.statusCode) {
        case 400:
          return WorkspaceBadRequestFailure(
            message: failure.body['message'],
          );
        case 500:
          return WorkspaceServerInternalFailure();
        case -1:
          return WorkspaceApiConnectionFailure();
        default:
          return WorkspaceUnimplementedFailure();
      }
    }
    return WorkspaceUnimplementedFailure();
  }
}

class WorkspaceUnauthorizedFailure {}

class WorkspaceBadRequestFailure extends WorkspaceFailure {
  WorkspaceBadRequestFailure({
    this.message,
  });

  final String? message;
}

class WorkspaceServerInternalFailure extends WorkspaceFailure {}

class WorkspaceNotFoundFailure extends WorkspaceFailure {}

class WorkspaceApiConnectionFailure implements WorkspaceFailure {}

class WorkspaceUnimplementedFailure extends WorkspaceFailure {}
