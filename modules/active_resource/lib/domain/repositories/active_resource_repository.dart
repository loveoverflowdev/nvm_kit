import 'package:fpdart/fpdart.dart';

import '../entities.dart';

// TODO: Make request field to common package
abstract interface class ActiveResourceRepository {
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required String activeStructureCode,
    required String id,
    String? requestField,
  });

  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required String activeStructureCode,
    String? requestField,
  });
}
