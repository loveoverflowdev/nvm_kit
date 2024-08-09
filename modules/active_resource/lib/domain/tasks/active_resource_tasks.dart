import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;
import 'package:fpdart/fpdart.dart' show ReaderTaskEither;

import '../entities.dart';
import '../repositories.dart' show ActiveResourceRepository;

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    ActiveResource> getActiveResourceTask({
  required String id,
  required String resourceCode,
  final RequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResource(
            id: id,
            resourceCode: resourceCode,
            requestField: requestField,
          )
          .run(),
    );

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    List<ActiveResource>> getActiveResourceListTask({
  required String resourceCode,
  final RequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResourceList(
            resourceCode: resourceCode,
            requestField: requestField,
          )
          .run(),
    );
