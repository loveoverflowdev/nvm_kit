import 'package:fpdart/fpdart.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart';

import '../entities.dart';

// TODO: Make request field to common package
abstract interface class ActiveResourceRepository {
  TaskEither<ActiveResourceFailure, ActiveResource> getActiveResource({
    required final String resourceCode,
    required final String id,
    final RequestField? requestField,
  });

  TaskEither<ActiveResourceFailure, List<ActiveResource>>
      getActiveResourceList({
    required final String resourceCode,
    final RequestField? requestField,
  });
}
