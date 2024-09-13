// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignee_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssigneeResponse _$AssigneeResponseFromJson(Map<String, dynamic> json) =>
    AssigneeResponse(
      widgetBoardRoleId: json['widgetBoardRoleId'] as String,
      averageProgress: (json['averageProgress'] as num).toInt(),
      finalStatus: json['finalStatus'] as String,
      roles: (json['widgetRoles'] as List<dynamic>)
          .map((e) => RoleResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssigneeResponseToJson(AssigneeResponse instance) =>
    <String, dynamic>{
      'widgetBoardRoleId': instance.widgetBoardRoleId,
      'averageProgress': instance.averageProgress,
      'finalStatus': instance.finalStatus,
      'widgetRoles': instance.roles,
    };

RoleResponse _$RoleResponseFromJson(Map<String, dynamic> json) => RoleResponse(
      id: json['widgetRoleId'] as String,
      assignedByUserId: json['assignedByUserId'] as String?,
      status: json['status'] as String,
      progress: (json['progress'] as num).toInt(),
    );

Map<String, dynamic> _$RoleResponseToJson(RoleResponse instance) =>
    <String, dynamic>{
      'widgetRoleId': instance.id,
      'assignedByUserId': instance.assignedByUserId,
      'status': instance.status,
      'progress': instance.progress,
    };
