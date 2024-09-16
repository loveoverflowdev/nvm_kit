import 'package:fpdart/fpdart.dart';
import 'package:user/domain/entities.dart';
import 'package:user/domain/repositories.dart';

@Deprecated('This code will remove when permission is required')
ReaderTaskEither<UserRepository, UserFailure, List<User>> getAllUsersTask() =>
    ReaderTaskEither(
      (repository) => repository.getAllUsers().run(),
    );
