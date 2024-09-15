import 'package:alchemist_query/alchemist_query.dart';

final class RolesBoardRequestField {
  static final RequestField all = RequestField.children(
    [
      id,
      boardName,
      description,
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
      RequestField.name('id'),
      RequestField.name('description'),
      RequestField.name('color'),
      RequestField.name('icon'),
      RequestField.name('progress'),
      RequestField.name('progressTitle'),
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
