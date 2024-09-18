import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart';

ReaderTaskEither<RemoteActiveStructureRepository, ActiveStructureFailure,
    ActiveStructure> getActiveStructureByIdTask(
  String id,
) =>
    ReaderTaskEither(
      (repository) => repository.getActiveStructureById(id).run(),
    );

ReaderTaskEither<RemoteActiveStructureRepository, ActiveStructureFailure,
    ActiveStructure> getActiveStructureByCodeTask(
  String code,
) =>
    ReaderTaskEither(
      (repository) => repository.getActiveStructureByCode(code).run(),
    );

ReaderTaskEither<RemoteActiveStructureRepository, ActiveStructureFailure,
        List<ActiveStructure>>
    getRemoteActiveStructureListTask() => ReaderTaskEither(
          (repository) => repository.getActiveStructureList().run(),
        );

ReaderTaskEither<LocalActiveStructureRepository, ActiveStructureFailure,
        List<ActiveStructure>>
    readLocalActiveStructureListTask() => ReaderTaskEither(
          (repository) => repository.readActiveStructureList().run(),
        );

ReaderTaskEither<LocalActiveStructureRepository, ActiveStructureFailure, bool>
    writeLocalActiveStructureListTask(
            List<ActiveStructure> activeStructureList) =>
        ReaderTaskEither(
          (repository) => repository
              .writeActiveStructureList(
                activeStructureList,
              )
              .run(),
        );
