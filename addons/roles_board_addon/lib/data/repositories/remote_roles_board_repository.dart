import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

final class RemoteRolesBoardRepository implements RolesBoardRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteRolesBoardRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenProvider;

  @override
  TaskEither<RolesBoardFailure, List<RolesBoard>> getRolesBoardList() {
    // TODO: implement getRolesBoardList
    throw UnimplementedError();
  }
}
