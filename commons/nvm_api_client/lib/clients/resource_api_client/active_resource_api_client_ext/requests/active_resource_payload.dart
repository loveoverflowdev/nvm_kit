final class ActiveResourcePayload {
  final String projectId;
  final Map<String, dynamic> liveAttributes;

  ActiveResourcePayload({
    required this.projectId,
    required this.liveAttributes,
  });

  Map<String, dynamic> toJson() {
    return {
      'projectId': projectId,
      'liveAttributes': liveAttributes,
    };
  }
}
