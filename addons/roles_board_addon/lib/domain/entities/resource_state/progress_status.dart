enum ProgressStatus {
  notStarted,
  inProgress,
  completed;

  String get title {
    return switch (this) {
      ProgressStatus.notStarted => 'Not started',
      ProgressStatus.inProgress => 'In progress',
      ProgressStatus.completed => 'Completed',
    };
  }

}
