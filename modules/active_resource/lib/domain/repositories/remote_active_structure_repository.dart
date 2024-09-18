import 'package:fpdart/fpdart.dart';
import '../entities.dart';

abstract class RemoteActiveStructureRepository {
  // TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureById(String id);

  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      getActiveStructureList();

  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureByCode(
    String code,
  );

  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructureById(
    String id,
  );
}
