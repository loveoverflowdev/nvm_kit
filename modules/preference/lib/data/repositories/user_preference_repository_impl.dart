// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';
import 'package:nvm_api_client/nvm_api_client.dart' as api;
import 'package:preference/domain.dart';

class UserPreferenceRepositoryImpl implements UserPreferenceRepository {
  final api.UserApiClient _apiClient;
  final Future<String?> Function() _userIdProvider;

  UserPreferenceRepositoryImpl({
    required Future<String?> Function() userIdProvider,
    required api.UserApiClient apiClient,
  })  : _apiClient = apiClient,
        _userIdProvider = userIdProvider;


  @override
  TaskEither<UserFailure, User> getCurrentUser() {
    return TaskEither.tryCatch(
      () async {
        return _userIdProvider().then(
          (userId) {
            if (userId == null) {
              throw UserFailure.userIdMissing(stackTrace: StackTrace.current);
            }
            return _apiClient
                .getUserById(
                  userId,
                )
                .then(
                  _mapResponse,
                );
          },
        );
      },
      (failure, stackTrace) =>
          UserFailure.fromError(failure, stackTrace: stackTrace),
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
