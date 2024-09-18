import 'package:active_resource/domain.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UserRepository {
  @Deprecated('This code will remove when permission is required')
  TaskEither<UserFailure, List<User>> getAllUsers();
}
