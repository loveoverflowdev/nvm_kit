import 'package:alchemist_query/alchemist_query.dart';

abstract final class CommentRequestField {
  static final simplified = RequestField.children([
    content,
    createdByUser,
    topic,
    createdAt,
  ]);

  static final all = RequestField.children(
    [
      title,
      content,
      createdBy,
      createdByUser,
      id,
      topic,
      subjectType,
      commentType,
      subjectId,
    ],
  );

  static final title = RequestField.name('commentTitle');
  static final content = RequestField.name('commentContent');
  static final createdBy = RequestField.name('createdBy');
  static final createdAt = RequestField.name('createdAt');
  static final createdByUser = RequestField(
    name: 'createdByUser',
    children: [
      RequestField.name('id'),
      RequestField.name('fullName'),
    ],
  );
  static final id = RequestField.name('id');
  static final topic = RequestField.name('topic');
  static final subjectType = RequestField.name('subjectType');
  static final commentType = RequestField.name('commentType');
  static final subjectId = RequestField.name('subjectId');
}
