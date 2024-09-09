import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart' show ActiveResourceRepository;

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    ActiveResource> getActiveResourceTask({
  required String id,
  required String activeStructureCode,
  String? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResource(
            id: id,
            activeStructureCode: activeStructureCode,
            requestField: requestField,
          )
          .run(),
    );

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    List<ActiveResource>> getActiveResourceListTask({
  required String activeStructureCode,
  required String? projectId,
  String? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResourceList(
            projectId: projectId,
            activeStructureCode: activeStructureCode,
            requestField: requestField,
          )
          .run(),
    );

/// TODO:
ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure, void> 
  createActiveResourceTask({
  required String activeStructureCode,
  required ActiveResourcePayload payload,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .createActiveResource(
            activeStructureCode: activeStructureCode,
            payload: payload,
          )
          .run(),
    );
  