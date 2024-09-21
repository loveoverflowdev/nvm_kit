/// Add provider for input
final class ActiveResourceForm {
  final String projectId;
  final Map<String, dynamic> _attributes;

  ActiveResourceForm({
    required this.projectId,
    Map<String, dynamic>? attributes,
  }) : _attributes = attributes ?? {};

  void setAttribute({
    required String key,
    required dynamic value,
  }) {
    _attributes[key] = value;
  }

  Map<String, dynamic> getAllAttributes() => _attributes;
}

/*
{
    "projectId": "656378298858733940",
    "liveAttributes": {
        "task_name": "ss"
    }
}
*/
