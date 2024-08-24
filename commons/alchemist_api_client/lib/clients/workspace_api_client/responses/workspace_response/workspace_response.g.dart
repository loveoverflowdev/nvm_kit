// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkspaceResponse _$WorkspaceResponseFromJson(Map<String, dynamic> json) =>
    WorkspaceResponse(
      id: json['id'] as String,
      workspaceName: json['workspaceName'] as String,
      namespace: json['namespace'] as String,
      activeMemberIds: json['activeMemberIds'] as List<dynamic>?,
      pendingMemberIds: json['pendingMemberIds'] as List<dynamic>?,
      ownerId: json['ownerId'] as String?,
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      workspaceCapacity: json['workspaceCapacity'] == null
          ? null
          : OrganizationCapacityResponse.fromJson(
              json['workspaceCapacity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WorkspaceResponseToJson(WorkspaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workspaceName': instance.workspaceName,
      'namespace': instance.namespace,
      'workspaceCapacity': instance.workspaceCapacity,
      'activeMemberIds': instance.activeMemberIds,
      'pendingMemberIds': instance.pendingMemberIds,
      'ownerId': instance.ownerId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

OrganizationCapacityResponse _$OrganizationCapacityResponseFromJson(
        Map<String, dynamic> json) =>
    OrganizationCapacityResponse(
      member: (json['member'] as num?)?.toInt(),
      project: (json['project'] as num?)?.toInt(),
      timeline: (json['timeline'] as num?)?.toInt(),
      milestone: (json['milestone'] as num?)?.toInt(),
      tag: (json['tag'] as num?)?.toInt(),
      epic: (json['epic'] as num?)?.toInt(),
      task: (json['task'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OrganizationCapacityResponseToJson(
        OrganizationCapacityResponse instance) =>
    <String, dynamic>{
      'member': instance.member,
      'project': instance.project,
      'timeline': instance.timeline,
      'milestone': instance.milestone,
      'tag': instance.tag,
      'epic': instance.epic,
      'task': instance.task,
    };
