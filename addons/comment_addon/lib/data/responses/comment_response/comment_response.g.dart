// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentResponse _$CommentResponseFromJson(Map<String, dynamic> json) =>
    CommentResponse(
      id: json['id'] as String,
      topic: json['topic'] as String,
      subjectType: json['subjectType'] as String,
      commentType: json['commentType'] as String,
      subjectId: json['subjectId'] as String,
      commentTitle: json['commentTitle'] as String,
      commentContent: json['commentContent'] as String,
      createdBy: json['createdBy'] as String,
      createdByUser: json['createdByUser'] as String,
    );

Map<String, dynamic> _$CommentResponseToJson(CommentResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'subjectType': instance.subjectType,
      'commentType': instance.commentType,
      'subjectId': instance.subjectId,
      'commentTitle': instance.commentTitle,
      'commentContent': instance.commentContent,
      'createdBy': instance.createdBy,
      'createdByUser': instance.createdByUser,
    };
