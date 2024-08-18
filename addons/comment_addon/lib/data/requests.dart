import 'package:alchemist_api_client/alchemist_api_client.dart';

final class CommentRequestField {
  static final RequestField all = RequestField.children(
    [
      id,
      topic,
      subjectType,
      commentType,
      commentTitle,
      commentContent,
      createdBy,
      createdByUser,
    ],
  );

  static final RequestField id = RequestField.name('id');
  static final RequestField topic = RequestField.name('topic');
  static final RequestField subjectType = RequestField.name('subjectType');
  static final RequestField commentType = RequestField.name('commentType');
  static final RequestField commentTitle = RequestField.name('commentTitle');
  static final RequestField commentContent =
      RequestField.name('commentContent');
  static final RequestField createdBy = RequestField.name('createdBy');
  static final RequestField createdByUser = RequestField(
    name: 'createdByUser',
    children: [
      RequestField.name('id'),
      RequestField.name('fullName'),
    ],
  );
}

// id,topic,subjectType,commentType,subjectId,commentTitle,commentContent,createdBy,createdByUser{id,fullName}
