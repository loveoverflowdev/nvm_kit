import 'package:fpdart/fpdart.dart';
import 'package:user/domain/entities.dart';

abstract interface class UserRepository {
  TaskEither<UserFailure, List<User>> getAllUsers();
}
