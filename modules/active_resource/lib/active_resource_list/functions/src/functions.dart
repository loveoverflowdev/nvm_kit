import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:nvm_active_resource/nvm_active_resource.dart';
import 'package:fpdart/fpdart.dart';
import 'models/models.dart';

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


/*

final GetNotificationFunction getNotificationFunction =
    () => TaskEither.right([]);

CreateNotificationFunction createNotificationFunction = ({
  required NotificationForm notificationForm,
}) =>
    TaskEither.right(null);

typedef GetNotificationFunction
    = TaskEither<NotificationFailure, List<NotificationBlock>> Function();

typedef CreateNotificationFunction = TaskEither<NotificationFailure, dynamic>
    Function({
  required NotificationForm notificationForm,
});

*/