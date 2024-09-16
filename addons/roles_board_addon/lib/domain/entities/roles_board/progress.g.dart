// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Progress _$ProgressFromJson(Map<String, dynamic> json) => Progress(
      id: json['id'] as String,
      progress: json['progress'] as num,
      title: json['title'] as String,
      description: json['description'] as String,
      color: json['color'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$ProgressToJson(Progress instance) => <String, dynamic>{
      'id': instance.id,
      'progress': instance.progress,
      'title': instance.title,
      'description': instance.description,
      'color': instance.color,
      'icon': instance.icon,
    };
