import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart';

// ReaderTaskEither<ActiveStructureRepository, Exception, ActiveStructure>
//     getActiveStructureByIdTask(String id) =>
//         ReaderTaskEither(
//           (repository) => repository.getActiveStructureById(id).run(),
//         );

ReaderTaskEither<ActiveStructureRepository, Exception, ActiveStructure>
    getActiveStructureByCodeTask(String id) =>
        ReaderTaskEither(
          (repository) => repository.getActiveStructureByCode(id).run(),
        );

ReaderTaskEither<ActiveStructureRepository, Exception, List<ActiveStructure>>
    getActiveStructureListTask() => ReaderTaskEither(
          (repository) => repository.getActiveStructureList().run(),
        );
