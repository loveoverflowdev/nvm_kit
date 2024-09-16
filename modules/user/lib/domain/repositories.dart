import 'package:fpdart/fpdart.dart';
import 'package:user/domain/entities.dart';

abstract interface class UserRepository {
  @Deprecated('This code will remove when permission is required')
  TaskEither<UserFailure, List<User>> getAllUsers();
}
