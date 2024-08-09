import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart';

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
    ActiveResourceStructure> getActiveResourceStructureTask({
  required String id,
}) =>
    ReaderTaskEither(
      (repository) => repository.getActiveResourceStructure(id: id).run(),
    );

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
        List<ActiveResourceStructure>>
    getActiveResourceStructureListTask() => ReaderTaskEither(
          (repository) => repository.getActiveResourceStructureList().run(),
        );
