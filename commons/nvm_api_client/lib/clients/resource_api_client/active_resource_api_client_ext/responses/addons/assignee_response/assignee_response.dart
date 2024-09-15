import 'package:json_annotation/json_annotation.dart';

import '../addon_response.dart';

part 'assignee_response.g.dart';

@JsonSerializable()
class AssigneeResponse extends AddonResponse {
  final String widgetBoardRoleId;
  final double averageProgress;
  final String finalStatus;

  @JsonKey(name: 'widgetRoles')
  final List<RoleStateResponse> roles;

  AssigneeResponse({
    required this.widgetBoardRoleId,
    required this.averageProgress,
    required this.finalStatus,
    required this.roles,
  });

  factory AssigneeResponse.fromJson(Map<String, dynamic> json) =>
      _$AssigneeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AssigneeResponseToJson(this);

  @override
  AddonFeatureType get type => AddonFeatureType.rolesBoard;
}

@JsonSerializable()
class RoleStateResponse {
  @JsonKey(name: 'widgetRoleId')
  final String id;

  @JsonKey(name: 'assignedBy')
  final String? assignedToUserId;
  final String status;
  final double progress;

  RoleStateResponse({
    required this.id,
    required this.assignedToUserId,
    required this.status,
    required this.progress,
  });

  factory RoleStateResponse.fromJson(Map<String, dynamic> json) =>
      _$RoleStateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RoleStateResponseToJson(this);
}

/*
  "widgetBoardRoleId": "657763459693282282",
  "averageProgress": 0,
  "finalStatus": "NOT_STARTED",
  "widgetRoles": [
      {
          "widgetRoleId": "664886483190025000",
          "assignedBy": "0",
          "status": "NOT_STARTED",
          "progress": 0
      },
  ]
*/
