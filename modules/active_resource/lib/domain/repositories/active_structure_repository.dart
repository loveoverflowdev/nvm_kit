import 'package:fpdart/fpdart.dart';

import '../entities.dart';
import 'active_structure_storage.dart';

abstract class ActiveStructureRepository {
  ActiveStructureRepository({
    required ActiveStructureStorage storage,
  });

  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructure({
    required String id,
  });

  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      getActiveStructureList();

  TaskEither<ActiveStructureFailure, String?> readActiveStructureId({
    required String code,
  });
}
