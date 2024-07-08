sealed class NotificationFailure {
  final String error;
  final StackTrace stackTrace;

  const NotificationFailure(this.error, this.stackTrace);
}
