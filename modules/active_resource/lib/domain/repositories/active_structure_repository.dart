import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class ActiveStructureRepository {
  TaskEither<ActiveStructureFailure, ActiveStructure> getActiveStructure({
    required String id,
  });

  TaskEither<ActiveStructureFailure, List<ActiveStructure>>
      getActiveStructureList();
}
