import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart' show ActiveResourceRepository;

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    ActiveResource> getActiveResourceTask({
  required String id,
  required ActiveStructure structure,
  String? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResource(
            id: id,
            structure: structure,
            requestField: requestField,
          )
          .run(),
    );

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    List<ActiveResource>> getActiveResourceListTask({
  required ActiveStructure structure,
  required String? projectId,
  String? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResourceList(
            projectId: projectId,
            structure: structure,
            requestField: requestField,
          )
          .run(),
    );

/// TODO:
ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure, void> 
  createActiveResourceTask({
  required ActiveStructure structure,
  required ActiveResourcePayload payload,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .createActiveResource(
            structure: structure,
            payload: payload,
          )
          .run(),
    );
