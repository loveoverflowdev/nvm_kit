import 'package:alchemist_api_client/alchemist_api_client.dart'
    show RequestField;

abstract class ActiveFieldRequestField {
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
}

abstract class ActiveFieldStructureRequestField {
  static final RequestField all = RequestField.children(
    [
      RequestField.name('id'),
      RequestField.name('resourceCode'),
      RequestField.name('resourceTitle'),
      RequestField.name('updatedBy'),
      RequestField.name('createdAt'),
      RequestField.name('updatedAt'),
      RequestField(
        name: 'activeFields',
        children: [
          RequestField.name('id'),
          RequestField.name('fieldCode'),
          RequestField.name('fieldTitle'),
          RequestField.name('fieldType'),
          RequestField.name('resourceStructureId'),
        ],
      ),
      RequestField(
        name: 'createdBy',
        children: [
          RequestField.name('id'),
          RequestField.name('username'),
          RequestField.name('email'),
          RequestField.name('phone'),
        ],
      ),
    ],
  );
}
