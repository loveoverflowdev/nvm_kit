final class ActiveResourcePayload {
  final String projectId;
  final Map<String, dynamic> liveAttributes;

  ActiveResourcePayload({
    required this.projectId,
    required this.liveAttributes,
  });
}

/*
{
    "projectId": "656378298858733940",
    "liveAttributes": {
        "task_name": "ss"
    }
}
*/