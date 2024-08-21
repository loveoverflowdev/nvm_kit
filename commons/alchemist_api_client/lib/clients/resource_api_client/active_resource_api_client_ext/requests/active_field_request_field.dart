import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;

final class ActiveFieldRequestField {
  static final RequestField id = RequestField.name('id');
  static final RequestField attributes = RequestField.name('attributes');
  static final RequestField project = RequestField.name('project');
  static final RequestField projectName = RequestField.name('projectName');
  static final RequestField projectDescription = RequestField.name(
    'projectDescription',
  );
  static final RequestField icon = RequestField.name('icon');
  static final RequestField createdAt = RequestField.name('createdAt');
  static final RequestField updatedAt = RequestField.name('updatedAt');
  static final RequestField createdByUser = RequestField.name('createdByUser');
  static final RequestField username = RequestField.name('username');
  static final RequestField labels = RequestField.name('username');
  static final RequestField labelName = RequestField.name('username');

  static final RequestField all = RequestField.children(
    [
      ActiveFieldRequestField.id,
      ActiveFieldRequestField.attributes,
      ActiveFieldRequestField.project.addChildren([
        ActiveFieldRequestField.projectName,
        ActiveFieldRequestField.id,
      ]),
      ActiveFieldRequestField.createdByUser.addChildren([
        ActiveFieldRequestField.username,
        ActiveFieldRequestField.id,
      ]),
      ActiveFieldRequestField.labels.addChildren([
        ActiveFieldRequestField.labelName,
        ActiveFieldRequestField.id,
      ]),
    ],
  );
}
