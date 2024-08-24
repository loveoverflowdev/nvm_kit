import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;

final class ProjectRequestField {
  static final RequestField id = RequestField.name('id');
  static final RequestField isDefault = RequestField.name('isDefault');
  static final RequestField projectName = RequestField.name('projectName');
  static final RequestField projectDescription =
      RequestField.name('projectDescription');
  static final RequestField icon = RequestField.name('icon');
  static final RequestField teamIds = RequestField.name('teamIds');
  static final RequestField createdAt = RequestField.name('createdAt');
  static final RequestField updatedAt = RequestField.name('updatedAt');

  static final RequestField all = RequestField.children([
    id,
    isDefault,
    projectName,
    projectDescription,
    icon,
    teamIds,
    createdAt,
    updatedAt,
  ]);
}
