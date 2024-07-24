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
    )
      ..workspaceCapacity = json['workspaceCapacity'] == null
          ? null
          : OrganizationCapacityResponse.fromJson(
              json['workspaceCapacity'] as Map<String, dynamic>)
      ..activeMemberIds = (json['activeMemberIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..pendingMemberIds = json['pendingMemberIds'] as List<dynamic>?
      ..ownerId = json['ownerId'] as int?
      ..logo = json['logo'] as String?
      ..thumbnailLogo = json['thumbnailLogo'] as String?
      ..createdAt = json['createdAt']
      ..updatedAt = json['updatedAt'];

Map<String, dynamic> _$WorkspaceResponseToJson(WorkspaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'workspaceName': instance.workspaceName,
      'namespace': instance.namespace,
      'workspaceCapacity': instance.workspaceCapacity,
      'activeMemberIds': instance.activeMemberIds,
      'pendingMemberIds': instance.pendingMemberIds,
      'ownerId': instance.ownerId,
      'logo': instance.logo,
      'thumbnailLogo': instance.thumbnailLogo,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

OrganizationCapacityResponse _$OrganizationCapacityResponseFromJson(
        Map<String, dynamic> json) =>
    OrganizationCapacityResponse(
      member: json['member'] as int,
      project: json['project'] as int,
      timeline: json['timeline'] as int,
      milestone: json['milestone'] as int,
      tag: json['tag'] as int,
      epic: json['epic'] as int,
      task: json['task'] as int,
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
