final class ActiveResourceCreatePayload {
  final String projectId;
  final Map<String, dynamic> attributes;
  final Map<String, dynamic> addonsAttributes;

  ActiveResourceCreatePayload({
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
