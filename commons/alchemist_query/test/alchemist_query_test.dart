import 'package:alchemist_query/alchemist_query.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Test Request Fields',
    () {
      const expected =
          'id,boardName,description,widgetRoles{id,name,shortName,description},widgetProgresses{id,progress,progressTitle,description,color,icon},createdBy,updatedBy,createdAt,updatedAt,createdByUser{id,fullName},updatedByUser';
      final actual = RolesBoardRequestField.all.build();
      expect(expected, actual);
    },
  );
}

final class RolesBoardRequestField {
  static final RequestField all = RequestField.children(
    [
      id,
      boardName,
      // description,
      widgetRoles,
      widgetProgresses,
      createdBy,
      updatedBy,
      createdAt,
      updatedAt,
      createdByUser,
      updatedByUser,
    ],
  );

  static final RequestField id = RequestField.name('id');
  static final RequestField boardName = RequestField.name('boardName');
  static final RequestField description = RequestField.name('description');
  static final RequestField widgetRoles = RequestField(
    name: 'widgetRoles',
    children: [
      RequestField.name('id'),
      RequestField.name('name'),
      RequestField.name('shortName'),
      RequestField.name('description'),
    ],
  );
  static final RequestField widgetProgresses = RequestField(
    name: 'widgetProgresses',
    children: [
      RequestField.name('description'),
      RequestField.name('id'),
      RequestField.name('progress'),
      RequestField.name('progressTitle'),
      RequestField.name('color'),
      RequestField.name('icon'),
    ],
  );
  static final RequestField createdBy = RequestField.name('createdBy');
  static final RequestField updatedBy = RequestField.name('updatedBy');
  static final RequestField createdAt = RequestField.name('createdAt');
  static final RequestField updatedAt = RequestField.name('updatedAt');
  static final RequestField createdByUser =
      RequestField(name: 'createdByUser', children: [
    RequestField.name('id'),
    RequestField.name('fullName'),
  ]);
  static final RequestField updatedByUser = RequestField.name('updatedByUser');
}
