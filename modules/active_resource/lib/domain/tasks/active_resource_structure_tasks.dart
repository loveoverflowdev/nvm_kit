import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart';

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
    ActiveResourceStructure> getActiveResourceStructure({
  required String id,
}) =>
    ReaderTaskEither(
      (repository) => repository.getActiveResourceStructure(id: id).run(),
    );

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
        List<ActiveResourceStructure>>
    getActiveResourceStructureList() => ReaderTaskEither(
          (repository) => repository.getActiveResourceStructureList().run(),
        );
