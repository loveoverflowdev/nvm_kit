import 'package:auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../entities.dart';

ReaderTaskEither<AuthRepository, AuthFailure, AuthCredentials> signInTask({
  required SigninForm form,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .signIn(
            form: form
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
