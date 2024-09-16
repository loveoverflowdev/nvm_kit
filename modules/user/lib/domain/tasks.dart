
import 'package:fpdart/fpdart.dart';
import 'package:user/domain/entities.dart';
import 'package:user/domain/repositories.dart';

ReaderTaskEither<UserRepository, UserFailure, List<User>> getAllUsersTask() 
  => ReaderTaskEither(
    (repository) => repository.getAllUsers().run(),
  );
