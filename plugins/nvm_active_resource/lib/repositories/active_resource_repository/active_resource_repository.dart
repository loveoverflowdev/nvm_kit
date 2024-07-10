import 'package:fpdart/fpdart.dart';

import 'failures/failures.dart';
import 'responses/responses.dart';

export 'failures/failures.dart';
export 'params/params.dart';
export 'responses/responses.dart';

sealed class ActiveResourceRepository {
  TaskEither<ActiveResourceFailure, ActiveResourceResponse> getActiveResource({
    required String id,
  });

  TaskEither<ActiveResourceFailure, List<ActiveResourceResponse>>
      getActiveResourceList();
}
