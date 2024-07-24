import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;
import 'package:fpdart/fpdart.dart';

import '../repositories/repositories.dart';

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    ActiveResourceResponse> getActiveResource({
  required String id,
  required String resourceCode,
  final RequestField? requestField,
}) =>
    ReaderTaskEither(
      (repository) => repository
          .getActiveResource(
            id: id,
            resourceCode: resourceCode,
          )
          .run(),
    );

ReaderTaskEither<ActiveResourceRepository, ActiveResourceFailure,
    List<ActiveResourceResponse>> getActiveResourceList({
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

ReaderTaskEither<
    ActiveResourceStructureRepository,
    ActiveResourceStructureFailure,
    ActiveResourceStructureResponse> getActiveResourceStructure({
  required String id,
}) =>
    ReaderTaskEither(
      (repository) => repository.getActiveResourceStructure(id: id).run(),
    );

ReaderTaskEither<ActiveResourceStructureRepository,
        ActiveResourceStructureFailure, List<ActiveResourceStructureResponse>>
    getActiveResourceStructureList() => ReaderTaskEither(
          (repository) => repository.getActiveResourceStructureList().run(),
        );
