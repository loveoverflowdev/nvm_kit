
import 'package:fpdart/fpdart.dart';
import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<UserRepository, UserFailure, User>  getUserTask({
  required String userId,
  String? requestField,
}) => ReaderTaskEither(
  (repository) => repository.getUser(userId: userId, requestField: requestField).run()
);

