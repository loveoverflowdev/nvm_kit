import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';

ReaderTaskEither<ActiveResourceRepository, Exception, ActiveResourceBlock>
    getActiveResource({
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
              .map(
                _convertActiveResponseToBlock,
              )
              .run(),
        );

ReaderTaskEither<ActiveResourceRepository, Exception, List<ActiveResourceBlock>>
    getActiveResourceList({
  required String resourceCode,
  final RequestField? requestField,
}) =>
        ReaderTaskEither(
          (repository) => repository
              .getActiveResourceList(
                resourceCode: resourceCode,
                requestField: requestField,
              )
              .map(
                (response) => response
                    .map(
                      _convertActiveResponseToBlock,
                    )
                    .toList(),
              )
              .run(),
        );

ActiveResourceBlock _convertActiveResponseToBlock(
  ActiveResourceResponse response,
) =>
    ActiveResourceBlock(
      attributes: response.attributes,
      project: ActiveResourceProjectBlock(
        id: response.project.id,
        name: response.project.name,
        description: response.project.description,
        icon: response.project.icon,
        isDefault: response.project.isDefault,
        // TODO: convert to DateTime
        createdAt: response.project.createdAt,
        updatedAt: response.project.updatedAt,
      ),
      creator: ActiveResourceCreatorBlock(
        avatarUrl: response.creator.avatarUrl,
        thumbnailAvatarUrl: response.creator.thumbnailAvatarUrl,
        email: response.creator.email,
        username: response.creator.username,
        id: response.creator.id,
        phone: response.creator.phone,
        // TODO: convert DateTime
      ),
    );

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
    ActiveResourceStructureResponse> getActiveResourceStructure({
  required String id,
}) =>
    ReaderTaskEither(
      (repository) => repository.getActiveResourceStructure(id: id).run(),
    );

ReaderTaskEither<ActiveResourceStructureRepository, Exception,
        List<ActiveResourceStructureResponse>>
    getActiveResourceStructureList() => ReaderTaskEither(
          (repository) => repository.getActiveResourceStructureList().run(),
        );
