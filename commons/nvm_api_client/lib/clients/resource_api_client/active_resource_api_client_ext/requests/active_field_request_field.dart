import 'package:alchemist_query/alchemist_query.dart';

final class ActiveFieldRequestField {
  static final RequestField id = RequestField.name('id');
  static final RequestField liveAttributes =
      RequestField.name('liveAttributes');
  static final RequestField projectId = RequestField.name('projectId');

  static final RequestField icon = RequestField.name('icon');
  static final RequestField createdAt = RequestField.name('createdAt');
  static final RequestField updatedAt = RequestField.name('updatedAt');
  static final RequestField createdByUser = RequestField.name('createdByUser');
  static final RequestField username = RequestField.name('username');
  static final RequestField labelIds = RequestField.name('labelIds');

  static final RequestField all = RequestField.children(
    [
      id,
      liveAttributes,
      RequestField.name('createdByUser').addChildren([
        username,
        id,
      ]),
      projectId,
      labelIds,
    ],
  );
}
