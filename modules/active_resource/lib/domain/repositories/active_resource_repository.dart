import 'package:fpdart/fpdart.dart';

import '../entities.dart';

// TODO: Make request field to common package
abstract interface class ActiveResourceRepository {
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required ActiveStructure structure,
    required String id,
    String? requestField,
  });

  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required ActiveStructure structure,
    required String? projectId,
    String? requestField,
  });

  TaskEither<ActiveResourceFailure, void> createActiveResource({
    required ActiveStructure structure,
    required ActiveResourcePayload payload,
  });
}
