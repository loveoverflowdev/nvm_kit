import 'package:auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../entities.dart';

ReaderTaskEither<AuthRepository, AuthFailure, AuthCredential> signInTask({
  required Username username,
  required Password password,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .signIn(
            username: username,
            password: password,
          )
          .run(),
    );

/*
ReaderTaskEither<WorkspaceRepository, Exception, List<Workspace>>
    getWorkspaceListTask({
  RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getWorkspaceList(
                requestField: requestField,
              )
              .run(),
        );
*/
