import 'package:fpdart/fpdart.dart';
import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:roles_board_addon/domain.dart';

final class RemoteRolesBoardUserRepository implements RolesBoardUserRepository {
  final api.UserApiClient _apiClient;

  RemoteRolesBoardUserRepository({
    required api.UserApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<RolesBoardFailure, List<User>> getAllUsers() {
    return TaskEither.tryCatch(
      () => _apiClient.getAllUsers().then(
            (users) => users.map(_mapResponse).toList(),
          ),
      (err, stackTrace) =>
          RolesBoardFailure.fromError(err, stackTrace: stackTrace),
    );
  }

  @override
  TaskEither<RolesBoardFailure, User> getUserById(String id) {
    return TaskEither.tryCatch(
      () => _apiClient.getUserById(id).then(
            _mapResponse,
          ),
      (err, stackTrace) =>
          RolesBoardFailure.fromError(err, stackTrace: stackTrace),
    );
  }

  User _mapResponse(api.UserResponse response) {
    return User(
      id: response.id,
      username: response.username,
      fullName: response.fullName,
      thumbnailAvatarUrl: response.thumbnailAvatarUrl,
      avatar: response.avatar,
    );
  }
}
