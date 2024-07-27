// typedef SigninSubmitState = AsyncValue<SigninBlock?>;

// @riverpod
// class SigninSubmit extends _$SigninSubmit {
//   @override
//   SigninSubmitState build() => const SigninSubmitState.data(null);

//   void submit({
//     required SigninForm form,
//   }) {
//     state = const AsyncValue.loading();

//     signinFunction(
//       form: form,
//     ).match((failure) {
//       state = SigninSubmitState.error(failure.error, failure.stackTrace);
//     }, (block) {
//       state = SigninSubmitState.data(block);
//     }).run();
//   }
// }
