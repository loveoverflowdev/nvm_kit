class Workspace {
  final String id;
  final String workspaceName;
  final String namespace;
  //
  late final OrganizationCapacity? workspaceCapacity;
  late final List<int>? activeMemberIds;
  late final List<dynamic>? pendingMemberIds;
  late final int? ownerId;
  late final String? logo;
  late final String? thumbnailLogo;
  late final dynamic createdAt;
  late final dynamic updatedAt;

  Workspace({
    required this.id,
    required this.workspaceName,
    required this.namespace,
  });
}

class OrganizationCapacity {
  final int member;
  final int project;
  final int timeline;
  final int milestone;
  final int tag;
  final int epic;
  final int task;

  OrganizationCapacity({
    required this.member,
    required this.project,
    required this.timeline,
    required this.milestone,
    required this.tag,
    required this.epic,
    required this.task,
  });
}
