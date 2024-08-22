import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart' show ActiveResourceRepository;

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    ActiveResource> getActiveResourceTask({
  required String id,
  required String resourceCode,
  required String workspaceId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResource(
            id: id,
            resourceCode: resourceCode,
            workspaceId: workspaceId,
          )
          .run(),
    );

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    List<ActiveResource>> getActiveResourceListTask({
  required String resourceCode,
  required String workspaceId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResourceList(
            resourceCode: resourceCode,
            workspaceId: workspaceId,
          )
          .run(),
    );
