import 'package:active_resource/domain.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ActiveResourceRepository {
  TaskEither<ActiveResourceFailure, void> createActiveResource({
    required ActiveStructure structure,
    required ActiveResourceForm form,
  });

  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResourceById(String id, {
    required ActiveStructure structure,
    String? requestField,
  });

  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required ActiveStructure structure,
    required String? projectId,
    String? requestField,
  });

  TaskEither<ActiveResourceFailure, void> deleteActiveResourceById(String id, {
    required ActiveStructure structure, 
  });

  TaskEither<ActiveResourceFailure, void> updateActiveResourceById(String id, {  
    required ActiveStructure structure,
    required ActiveResourceForm form,
  });
}
