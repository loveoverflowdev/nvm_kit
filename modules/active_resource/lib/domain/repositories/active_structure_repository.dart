import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class ActiveResourceStructureRepository {
  TaskEither<ActiveResourceStructureFailure, ActiveStructure>
      getActiveResourceStructure({
    required String id,
  });

  TaskEither<ActiveResourceStructureFailure, List<ActiveStructure>>
      getActiveResourceStructureList();
}
