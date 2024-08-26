import 'package:fpdart/fpdart.dart' show TaskEither;

import 'entities.dart';

abstract class UserRepository {
  TaskEither<UserFailure, User> getUser({
    required String userId,
    String? requestField,
  });
}

