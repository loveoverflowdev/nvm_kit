import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;

abstract class ActiveFieldRequestField {
  static final RequestField id = RequestField.name('id');
  static final RequestField project = RequestField.name('project');
  static final RequestField projectName = RequestField.name('projectName');
  static final RequestField projectDescription = RequestField.name(
    'projectDescription',
  );
  static final RequestField icon = RequestField.name('icon');
  static final RequestField createdAt = RequestField.name('createdAt');
  static final RequestField updatedAt = RequestField.name('updatedAt');
}
