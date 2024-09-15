// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_board_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RolesBoardResponse _$RolesBoardResponseFromJson(Map<String, dynamic> json) =>
    RolesBoardResponse(
      id: json['id'] as String,
      boardName: json['boardName'] as String,
      description: json['description'] as String,
      roles: (json['widgetRoles'] as List<dynamic>)
          .map((e) => RoleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdBy: json['createdBy'],
      createdAt: json['createdAt'],
      updatedBy: json['updatedBy'],
      updatedAt: json['updatedAt'],
      createdByUser: json['createdByUser'],
      updatedByUser: json['updatedByUser'],
      progresses: (json['widgetProgresses'] as List<dynamic>)
          .map((e) => ProgressResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RolesBoardResponseToJson(RolesBoardResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'boardName': instance.boardName,
      'description': instance.description,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'updatedBy': instance.updatedBy,
      'updatedAt': instance.updatedAt,
      'createdByUser': instance.createdByUser,
      'updatedByUser': instance.updatedByUser,
      'widgetRoles': instance.roles,
      'widgetProgresses': instance.progresses,
    };
