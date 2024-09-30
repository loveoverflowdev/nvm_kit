import 'package:alchemist_api_client/alchemist_api_client.dart';
import '../../token_provider.dart';
import '../../workspace_id_provider.dart';
import 'package:nvm_api_client/api_endpoints.dart' as endpoints;

import 'requests.dart';
import 'responses.dart';

final class RolesBoardApiClient {
  final AlchemistApiClient _alchemistApiClient;
  final TokenProvider _tokenProvider;
  final WorkspaceIdProvider _workspaceIdProvider;

  RolesBoardApiClient({
    required AlchemistApiClient alchemistApiClient,
    required TokenProvider tokenProvider,
    required WorkspaceIdProvider workspaceIdProvider,
  })  : _alchemistApiClient = alchemistApiClient,
        _tokenProvider = tokenProvider,
        _workspaceIdProvider = workspaceIdProvider;

  Future<List<RolesBoardResponse>> getRolesBoardList({
    String? requestField,
  }) async {
    // {{domain}}/api/workspaces/{{workspace}}/active-module/resources/tasks/664724104737195066/features/widget-comment/get/comments
    return _requestJson(
      endpoint: endpoints.getRolesBoardList(),
      alchemistQuery: AlchemistQuery(
        requestField: requestField ?? RolesBoardRequestField.all.build(),
      ),
      dataHandler: (json) => (json['data'] as List)
          .map(
            (e) => RolesBoardResponse.fromJson(e),
          )
          .toList(),
    );
  }

  Future<void> createRolesBoard({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardPayload payload,
  }) async {
    // {{domain}}/api/workspaces/{{workspace}}/widget/board-roles/post
    return _requestJson(
      endpoint: endpoints.createRolesBoard(),
      payload: payload.toJson(),
      dataHandler: (json) => json,
    );
  }

  Future<dynamic> updateRolesBoardResourceRoleProgress({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleProgressPayload payload,
  }) {
    return _requestJson(
      endpoint: endpoints.updateRolesBoardResourceRoleProgress(
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
      ),
      payload: payload.toJson(),
      dataHandler: (json) => json,
    );
  }

  Future<dynamic> updateRolesBoardResourceRoleStatus({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleStatusPayload payload,
  }) {
    return _requestJson(
      endpoint: endpoints.updateRolesBoardResourceRoleStatus(
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
      ),
      payload: payload.toJson(),
      dataHandler: (json) => json,
    );
  }

  Future<dynamic> updateRolesBoardResourceRoleAssignee({
    required String activeStructureCode,
    required String resourceId,
    required RolesBoardRoleAssigneePayload payload,
  }) {
    return _requestJson(
      endpoint: endpoints.updateRolesBoardResourceRoleAssignee(
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
      ),
      payload: payload.toJson(),
      dataHandler: (json) => json,
    );
  }

  Future<T> _requestJson<T>({
    required ApiEndpoint endpoint,
    String? id,
    AlchemistQuery? alchemistQuery,
    Map<String, dynamic>? uriParams,
    dynamic payload,
    Map<String, String>? headers,
    bool refreshTokenOnUnauthorization = true,
    required T Function(dynamic) dataHandler,
  }) async {
    return _alchemistApiClient.requestJson(
      authorization: await _tokenProvider(),
      endpoint: endpoint,
      workspaceId: await _workspaceIdProvider(),
      alchemistQuery: alchemistQuery,
      uriParams: uriParams,
      payload: payload,
      headers: headers,
      refreshTokenOnUnauthorization: refreshTokenOnUnauthorization,
      dataHandler: dataHandler,
    );
  }
}
