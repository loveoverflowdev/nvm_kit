import 'package:auth/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signout_provider.g.dart';

typedef SignoutState = AsyncValue<void>;

@riverpod
class Signout extends _$Signout {
  @override
  SignoutState build() => const SignoutState.data(null);

  void signOut() {
    state = const SignoutState.loading();
    signOutTask().match(
      (failure) {
        state = SignoutState.error(
          failure,
          failure.stackTrace ?? StackTrace.current,
        );
      },
      (_) {
        state = const SignoutState.data(null);
      },
    ).run(
      ref.watch(authRepositoryProvider),
    );
  }
}
