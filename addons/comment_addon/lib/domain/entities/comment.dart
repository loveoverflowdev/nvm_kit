import 'commented_user.dart';

class Comment {
  final String id;
  final String topic;
  final String subjectType;
  final String commentType;
  final String subjectId;
  final String commentTitle;
  final String commentContent;
  final CommentedUser createdByUser;

  Comment({
    required this.id,
    required this.topic,
    required this.subjectType,
    required this.commentType,
    required this.subjectId,
    required this.commentTitle,
    required this.commentContent,
    required this.createdByUser,
  });
}
