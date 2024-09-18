import 'package:active_resource/domain.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ActiveResourceRepository {
  TaskEither<ActiveResourceFailure, void> createActiveResource({
    required ActiveStructure structure,
    required ActiveResourceForm form,
  });

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
}
