// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignee_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssigneeResponse _$AssigneeResponseFromJson(Map<String, dynamic> json) =>
    AssigneeResponse(
      widgetBoardRoleId: json['widgetBoardRoleId'] as String,
      averageProgress: (json['averageProgress'] as num).toDouble(),
      finalStatus: json['finalStatus'] as String,
      roles: (json['widgetRoles'] as List<dynamic>)
          .map((e) => RoleStateResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AssigneeResponseToJson(AssigneeResponse instance) =>
    <String, dynamic>{
      'widgetBoardRoleId': instance.widgetBoardRoleId,
      'averageProgress': instance.averageProgress,
      'finalStatus': instance.finalStatus,
      'widgetRoles': instance.roles,
    };

RoleStateResponse _$RoleStateResponseFromJson(Map<String, dynamic> json) =>
    RoleStateResponse(
      id: json['widgetRoleId'] as String,
      assignedToUserId: json['assignedBy'] as String?,
      status: json['status'] as String,
      progress: (json['progress'] as num).toDouble(),
    );

Map<String, dynamic> _$RoleStateResponseToJson(RoleStateResponse instance) =>
    <String, dynamic>{
      'widgetRoleId': instance.id,
      'assignedBy': instance.assignedToUserId,
      'status': instance.status,
      'progress': instance.progress,
    };
