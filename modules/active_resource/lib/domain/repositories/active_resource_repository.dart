import 'package:fpdart/fpdart.dart';

import '../entities.dart';

// TODO: Make request field to common package
abstract interface class ActiveResourceRepository {
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required String resourceCode,
    required String id,
  });

  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required String resourceCode,
  });
}
