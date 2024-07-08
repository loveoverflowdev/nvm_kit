sealed class ProjectFailure {
  final String error;
  final StackTrace stackTrace;

  const ProjectFailure(this.error, this.stackTrace);
}
