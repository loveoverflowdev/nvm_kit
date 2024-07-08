sealed class SigninFailure {
  final String error;
  final StackTrace stackTrace;

  const SigninFailure(this.error, this.stackTrace);
}
