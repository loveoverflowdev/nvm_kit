import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';

import 'failures/failures.dart';
import 'params/params.dart';
import 'responses/responses.dart';

sealed class ActiveResourceRepository {
  TaskEither<Exception, ActiveResourceResponse> getActiveResource({
    required final String resourceCode,
    required final String id,
    final RequestField? requestField,
  });

  TaskEither<Exception, List<ActiveResourceResponse>> getActiveResourceList({
    required final String resourceCode,
    final RequestField? requestField,
  });
}

final class RemoteActiveResourceRepository implements ActiveResourceRepository {
  final Future<String> Function() _tokenFetcher;
  final ApiClient _apiClient;

  RemoteActiveResourceRepository({
    required final ApiClient apiClient,
    required Future<String> Function() tokenFetcher,
  })  : _apiClient = apiClient,
        _tokenFetcher = tokenFetcher;

  @override
  TaskEither<Exception, ActiveResourceResponse> getActiveResource({
    required String resourceCode,
    required String id,
    final RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () async {
        return _apiClient.requestJson(
          authorization: await _tokenFetcher(),
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/active-resource/get/resources/$resourceCode/$id',
          ),
          alchemistQuery: AlchemistQuery(
            requestField: requestField ??
                RequestField.children(
                  [
                    ActiveFieldRequestField.id,
                    ActiveFieldRequestField.attributes,
                    ActiveFieldRequestField.project.addChildren([
                      ActiveFieldRequestField.projectName,
                      ActiveFieldRequestField.id,
                    ]),
                    ActiveFieldRequestField.createdByUser.addChildren([
                      ActiveFieldRequestField.username,
                      ActiveFieldRequestField.id,
                    ]),
                    ActiveFieldRequestField.labels.addChildren([
                      ActiveFieldRequestField.labelName,
                      ActiveFieldRequestField.id,
                    ]),
                  ],
                ),
          ),
          dataHandler: (json) => ActiveResourceResponse.fromJson(json['data']),
        );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(error),
    );
  }

  @override
  TaskEither<Exception, List<ActiveResourceResponse>> getActiveResourceList({
    required String resourceCode,
    final RequestField? requestField,
  }) {
    return TaskEither.tryCatch(
      () {
        return _apiClient.requestJson(
          endpoint: ApiEndpoint(
            uriTemplate:
                '/api/workspaces/:workspace_id/active-resource/get/resources/$resourceCode',
          ),
          dataHandler: (json) => (json['data'] as Iterable)
              .map(
                (e) => ActiveResourceResponse.fromJson(e),
              )
              .toList(),
          alchemistQuery: AlchemistQuery(
            requestField: requestField ??
                RequestField.children(
                  [
                    ActiveFieldRequestField.id,
                    ActiveFieldRequestField.attributes,
                    ActiveFieldRequestField.project.addChildren([
                      ActiveFieldRequestField.projectName,
                      ActiveFieldRequestField.id,
                    ]),
                    ActiveFieldRequestField.createdByUser.addChildren([
                      ActiveFieldRequestField.username,
                      ActiveFieldRequestField.id,
                    ]),
                    ActiveFieldRequestField.labels.addChildren([
                      ActiveFieldRequestField.labelName,
                      ActiveFieldRequestField.id,
                    ]),
                  ],
                ),
          ),
        );
      },
      (error, stackTrace) => ActiveResourceFailure.fromError(error),
    );
  }
}
