import 'package:fpdart/fpdart.dart';
import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:user/domain.dart';

final class RemoteUserRepository implements UserRepository {
  final api.UserApiClient _apiClient;

  RemoteUserRepository({
    required api.UserApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<UserFailure, List<User>> getAllUsers() {
    return TaskEither.tryCatch(
      () => _apiClient
        .getAllUsers()
        .then(
          (users) => users.map(_mapResponse).toList(),
        ), 
      (err, stackTrace) => UserFailure.fromError(err, stackTrace: stackTrace),
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
