import 'package:alchemist_api_client/alchemist_api_client.dart';

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
