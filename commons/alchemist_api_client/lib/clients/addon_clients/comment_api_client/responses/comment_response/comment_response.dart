import 'package:json_annotation/json_annotation.dart';

part 'comment_response.g.dart';

@JsonSerializable()
class CommentResponse {
  final String id;
  final String topic;
  final String subjectType;
  final String commentType;
  final String subjectId;
  final String commentTitle;
  final String commentContent;
  final String createdBy;
  final String createdByUser;

  CommentResponse({
    required this.id,
    required this.topic,
    required this.subjectType,
    required this.commentType,
    required this.subjectId,
    required this.commentTitle,
    required this.commentContent,
    required this.createdBy,
    required this.createdByUser,
  });

  factory CommentResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommentResponseToJson(this);
}

/*
id": "665057604556294886",
  "topic": "Task_Response",
  "subjectType": "tasks",
  "commentType": "user",
  "subjectId": "664724104737195066",
  "commentTitle": "Ghi chú công việc 2",
  "commentContent": "Các mục sau đây cần ghi chú lại: Thông tin yêu cầu, mức độ khả thi",
  "createdBy": "605303072528270018",
  "createdByUser": {
      "id": "605303072528270018",
      "fullName": "NVM Team"
  }
*/