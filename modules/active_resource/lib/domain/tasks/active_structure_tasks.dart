import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart';

ReaderTaskEither<ActiveStructureRepository, Exception, ActiveStructure>
    getActiveStructureTask({
  required String id,
}) =>
        ReaderTaskEither(
          (repository) => repository.getActiveStructure(id: id).run(),
        );

ReaderTaskEither<ActiveStructureRepository, Exception, List<ActiveStructure>>
    getActiveStructureListTask() => ReaderTaskEither(
          (repository) => repository.getActiveStructureList().run(),
        );
