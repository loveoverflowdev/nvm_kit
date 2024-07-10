import 'package:fpdart/fpdart.dart';

import '../repositories/repositories.dart';

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    ActiveResourceResponse> getActiveResource({
  required String id,
}) =>
    ReaderTaskEither(
      (repository) => repository.getActiveResource(id: id).run(),
    );

ReaderTaskEither<ActiveResourceRepository,
        ActiveResourceFailure, List<ActiveResourceResponse>>
    getActiveResourceList() => ReaderTaskEither(
          (repository) => repository.getActiveResourceList().run(),
        );

ReaderTaskEither<
    ActiveResourceStructureRepository,
    ActiveResourceStructureFailure,
    ActiveResourceStructureResponse> getActiveResourceStructure({
  required String id,
}) =>
    ReaderTaskEither(
      (repository) => repository.getActiveResourceStructure(id: id).run(),
    );

ReaderTaskEither<ActiveResourceStructureRepository,
        ActiveResourceStructureFailure, List<ActiveResourceStructureResponse>>
    getActiveResourceStructureList() => ReaderTaskEither(
          (repository) => repository.getActiveResourceStructureList().run(),
        );
