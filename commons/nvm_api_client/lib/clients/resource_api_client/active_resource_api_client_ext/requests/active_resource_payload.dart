final class ActiveResourcePayload {
  final String projectId;
  final Map<String, dynamic> attributes;
  final Map<String, dynamic> addonsAttributes;

  ActiveResourcePayload({
    required this.projectId,
    required this.attributes,
    required this.addonsAttributes,
  });

  Map<String, dynamic> toJson() {
    return {
      'projectId': projectId,
      'liveAttributes': attributes,
      'liveFeatures': addonsAttributes,
    };
  }
}
