import 'package:fpdart/fpdart.dart';

import '../entities.dart';
import '../repositories.dart' show UserRepository;

@Deprecated('This code will remove when permission is required')
ReaderTaskEither<UserRepository, UserFailure, List<User>> getAllUsersTask() =>
    ReaderTaskEither(
      (repository) => repository.getAllUsers().run(),
    );

