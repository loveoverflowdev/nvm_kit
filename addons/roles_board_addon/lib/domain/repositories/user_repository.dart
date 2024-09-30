import 'package:fpdart/fpdart.dart';
import 'package:roles_board_addon/domain.dart';

abstract interface class UserRepository {
  @Deprecated('This code will remove when permission is required')
  TaskEither<RolesBoardFailure, List<User>> getAllUsers();

  @Deprecated('This code will remove when permission is required')
  TaskEither<RolesBoardFailure, User> getUserById(String id);
}
