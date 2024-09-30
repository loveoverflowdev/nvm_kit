final class ActiveResourceUpdatePayload {
  final Map<String, dynamic> attributes;
  final Map<String, dynamic> addonsAttributes;

  ActiveResourceUpdatePayload({
    required this.attributes,
    required this.addonsAttributes,
  });

  Map<String, dynamic> toJson() {
    return {
      'liveAttributes': attributes,
      'liveFeatures': addonsAttributes,
    };
  }
}
