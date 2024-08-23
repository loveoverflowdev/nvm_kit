import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class ActiveResourceStructureRepository {
  TaskEither<ActiveResourceStructureFailure, ActiveResourceStructure>
      getActiveResourceStructure({
    required String id,
  });

  TaskEither<ActiveResourceStructureFailure, List<ActiveResourceStructure>>
      getActiveResourceStructureList();
}
