import 'package:fpdart/fpdart.dart';
import 'package:nvm_core/common.dart';

import 'entities/entities.dart';

abstract interface class ActiveResourceRepository {
  TaskEither<Failure, ActiveResource> getActiveResource({
    required final String resourceCode,
    required final String id,
    final RequestField? requestField,
  });

  TaskEither<Failure, List<ActiveResource>> getActiveResourceList({
    required final String resourceCode,
    final RequestField? requestField,
  });
}
