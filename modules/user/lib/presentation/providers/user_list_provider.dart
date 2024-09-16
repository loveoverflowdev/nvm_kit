import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user/domain.dart';

import 'user_repository_provider.dart';

final userListProvider = FutureProvider.autoDispose<List<User>>(
  (ref) async {
    return getAllUsersTask()
        .run(
          ref.watch(userRepositoryProvider),
        )
        .then(
          (either) => either.fold(
            (failure) => throw failure,
            (data) => data,
          ),
        );
  },
);
