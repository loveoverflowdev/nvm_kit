import 'package:alchemist_query/alchemist_query.dart';

abstract class ActiveFieldStructureRequestField {
  static final RequestField all = RequestField.children(
    [
      RequestField.name('id'),
      RequestField.name('activeStructureCode'),
      RequestField.name('activeStructureTitle'),
      RequestField.name('activeFeatures'),
      RequestField.name('updatedBy'),
      RequestField.name('createdAt'),
      RequestField.name('updatedAt'),
      RequestField(
        name: 'activeFields',
        children: [
          RequestField.name('id'),
          RequestField.name('fieldName'),
          RequestField.name('fieldTitle'),
          RequestField.name('fieldType'),
          RequestField.name('valueActiveStructureId'),
          RequestField.name('order'),
          RequestField.name('fieldDescription'),
          RequestField.name('fieldPlaceholder'),
          RequestField.name('isRequired'),
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
