export 'failures/failures.dart';
export 'responses/responses.dart';

import 'package:fpdart/fpdart.dart';
import 'failures/failures.dart';
import 'responses/responses.dart';

sealed class ActiveResourceStructureRepository {
  TaskEither<ActiveResourceStructureFailure, ActiveResourceStructureResponse>
      getActiveResourceStructure({
    required String id,
  });

  TaskEither<ActiveResourceStructureFailure,
      List<ActiveResourceStructureResponse>> getActiveResourceStructureList();
}
