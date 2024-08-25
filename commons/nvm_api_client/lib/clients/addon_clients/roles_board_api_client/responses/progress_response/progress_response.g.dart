// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgressResponse _$ProgressResponseFromJson(Map<String, dynamic> json) =>
    ProgressResponse(
      id: json['id'] as String,
      progress: json['progress'] as num,
      title: json['title'] as String,
      description: json['description'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$ProgressResponseToJson(ProgressResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'progress': instance.progress,
      'title': instance.title,
      'description': instance.description,
      'color': instance.color,
      'icon': instance.icon,
    };
