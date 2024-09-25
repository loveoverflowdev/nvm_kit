// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_board_resource_state_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RolesBoardResourceStateResponse _$RolesBoardResourceStateResponseFromJson(
        Map<String, dynamic> json) =>
    RolesBoardResourceStateResponse(
      widgetBoardRoleId: json['widgetBoardRoleId'] as String,
      averageProgress: (json['averageProgress'] as num).toDouble(),
      finalStatus:
          ProgressStatusResponse.fromJson(json['finalStatus'] as String),
      roles: (json['widgetRoles'] as List<dynamic>)
          .map((e) => RoleStateResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RolesBoardResourceStateResponseToJson(
        RolesBoardResourceStateResponse instance) =>
    <String, dynamic>{
      'widgetBoardRoleId': instance.widgetBoardRoleId,
      'averageProgress': instance.averageProgress,
      'finalStatus': ProgressStatusResponse.toJson(instance.finalStatus),
      'widgetRoles': instance.roles,
    };

RoleStateResponse _$RoleStateResponseFromJson(Map<String, dynamic> json) =>
    RoleStateResponse(
      id: json['widgetRoleId'] as String,
      assignedToUserId: json['assignedTo'] as String?,
      status: ProgressStatusResponse.fromJson(json['status'] as String),
      progress: (json['progress'] as num).toDouble(),
    );

Map<String, dynamic> _$RoleStateResponseToJson(RoleStateResponse instance) =>
    <String, dynamic>{
      'widgetRoleId': instance.id,
      'assignedTo': instance.assignedToUserId,
      'status': ProgressStatusResponse.toJson(instance.status),
      'progress': instance.progress,
    };
