/// Add provider for input
final class ActiveResourceForm {
  final String projectId;
  final Map<String, dynamic> _attributes;
  final Map<String, dynamic> _addonAttributes;

  ActiveResourceForm({
    required this.projectId,
    Map<String, dynamic>? attributes,
    Map<String, dynamic>? addonAttributes,
  })  : _attributes = attributes ?? {},
        _addonAttributes = addonAttributes ?? {};

  void setAttribute({
    required String key,
    required dynamic value,
  }) {
    _attributes[key] = value;
  }

  void setAddonAttribute({
    required String key,
    required dynamic value,
  }) {
    _addonAttributes[key] = value;
  }

  Map<String, dynamic> getAllAddonAttributes() => _addonAttributes;

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
