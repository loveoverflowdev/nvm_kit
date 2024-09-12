import 'package:preference/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'user_preference_provider.dart';

final currentUserProvider = FutureProvider.autoDispose<User>(
  (ref) async {
    return getCurrentUserTask()
        .run(
          ref.read(userPreferenceProvider),
        )
        .then(
          (either) => either.fold(
            (failure) => throw failure,
            (data) => data,
          ),
        );
  },
);
