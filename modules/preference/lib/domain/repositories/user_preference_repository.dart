import 'package:fpdart/fpdart.dart';

import '../entities.dart';

abstract interface class UserPreferenceRepository {
  TaskEither<UserFailure, User> getCurrentUser();
}
