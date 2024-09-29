enum ProgressStatus {
  notStarted,
  processing,
  completed,
  ;

  factory ProgressStatus.fromName(String name) {
    for (final status in values) {
      if (status.name == name) {
        return status;
      }
    }
    throw Exception('Unknown status: $name');
  }

  String get label {
    return switch (this) {
      ProgressStatus.notStarted => 'Not started',
      ProgressStatus.processing => 'Processing',
      ProgressStatus.completed => 'Completed',
    };
  }
}
