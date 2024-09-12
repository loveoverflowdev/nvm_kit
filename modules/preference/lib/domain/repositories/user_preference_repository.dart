import '../entities.dart';

abstract interface class UserPreferenceRepository {
  Future<User> getUser();
}
