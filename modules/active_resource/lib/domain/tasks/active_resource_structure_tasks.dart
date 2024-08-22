import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart';

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
    ActiveResourceStructure> getActiveResourceStructureTask({
  required String id,
  required String workspaceId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResourceStructure(id: id, workspaceId: workspaceId)
          .run(),
    );

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
    List<ActiveResourceStructure>> getActiveResourceStructureListTask({
  required String workspaceId,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResourceStructureList(
            workspaceId: workspaceId,
          )
          .run(),
    );
