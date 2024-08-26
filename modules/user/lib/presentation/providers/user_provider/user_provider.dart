import 'package:user/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../user_repository_provider.dart';

part 'user_provider.g.dart';

@riverpod
Future<User> user(UserRef ref, {
  required String userId,
}) {
  return getUserTask(
    userId: userId,
    requestField: null,
  ).run(
    ref.read(userRepositoryProvider),
  ).then(
    (value) => value.fold((failure) => throw failure, (data) => data),
  );
}
