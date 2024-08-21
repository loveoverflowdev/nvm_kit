import 'package:json_annotation/json_annotation.dart';

part 'workspace_response.g.dart';

@JsonSerializable()
class WorkspaceResponse {
  final String id;
  final String workspaceName;
  final String namespace;
  //
  late final OrganizationCapacityResponse? workspaceCapacity;
  late final List<int>? activeMemberIds;
  late final List<dynamic>? pendingMemberIds;
  late final int? ownerId;
  late final String? logo;
  late final String? thumbnailLogo;
  late final dynamic createdAt;
  late final dynamic updatedAt;

  WorkspaceResponse({
    required this.id,
    required this.workspaceName,
    required this.namespace,
  });

  Map<String, dynamic> toJson() => _$WorkspaceResponseToJson(this);
  factory WorkspaceResponse.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceResponseFromJson(json);
}

@JsonSerializable()
class OrganizationCapacityResponse {
  final int member;
  final int project;
  final int timeline;
  final int milestone;
  final int tag;
  final int epic;
  final int task;

  OrganizationCapacityResponse({
    required this.member,
    required this.project,
    required this.timeline,
    required this.milestone,
    required this.tag,
    required this.epic,
    required this.task,
  });

  Map<String, dynamic> toJson() => _$OrganizationCapacityResponseToJson(this);
  factory OrganizationCapacityResponse.fromJson(Map<String, dynamic> json) =>
      _$OrganizationCapacityResponseFromJson(json);
}
