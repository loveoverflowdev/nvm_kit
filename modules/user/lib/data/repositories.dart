import 'package:fpdart/fpdart.dart';
import 'package:user/domain.dart';
import 'package:nvm_api_client/nvm_api_client.dart' as api;

final class RemoteUserRepository implements UserRepository {
  final api.UserApiClient _apiClient;

  RemoteUserRepository({
    required api.UserApiClient apiClient,
  }) : _apiClient = apiClient;

  @override
  TaskEither<UserFailure, User> getUser({
    required String userId,
    String? requestField,
  }) {
    return TaskEither.tryCatch(() {
      return _apiClient
          .getUser(
            userId: userId,
          )
          .then(
            _mapResponse,
          );
    },
        (error, stackTrace) =>
            UserFailure.fromError(error, stackTrace: stackTrace));
  }

  User _mapResponse(api.UserResponse response) {
    return User(
      id: response.id,
      username: response.username,
      fullName: response.fullName,
      email: response.email,
      phone: response.phone,
      createdAt: response.createdAt,
      updatedAt: response.updatedAt,
      avatarUrl: response.avatar,
      phoneCountryCode: response.phoneCountryCode,
      thumbnailAvatarUrl: response.thumbnailAvatarUrl,
      emailVerifiedAt: response.emailVerifiedAt,
      phoneVerifiedAt: response.phoneVerifiedAt,
    );
  }
}
