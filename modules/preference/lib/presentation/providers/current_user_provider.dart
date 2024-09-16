import 'package:preference/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_preference_repository_provider.dart';

final currentUserProvider = FutureProvider.autoDispose<User>(
  (ref) async {
    return getCurrentUserTask()
        .run(
          ref.watch(userPreferenceRepositoryProvider),
        )
        .then(
          (either) => either.fold(
            (failure) => throw failure,
            (data) => data,
          ),
        );
  },
);
