import 'package:json_annotation/json_annotation.dart';

import '../addon_response.dart';

part 'assignee_response.g.dart';

@JsonSerializable()
class AssigneeResponse extends AddonResponse {
  final String widgetBoardRoleId;
  final int averageProgress;
  final String finalStatus;

  @JsonKey(name: 'widgetRoles')
  final List<RoleResponse> roles;

  AssigneeResponse({
    required this.widgetBoardRoleId,
    required this.averageProgress,
    required this.finalStatus,
    required this.roles,
  });


  factory AssigneeResponse.fromJson(Map<String, dynamic> json) =>
      _$AssigneeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AssigneeResponseToJson(this);
}

@JsonSerializable()
class RoleResponse {
  @JsonKey(name: 'widgetRoleId')
  final String id;
  final String? assignedByUserId;
  final String status;
  final int progress;

  RoleResponse({
    required this.id,
    required this.assignedByUserId,
    required this.status,
    required this.progress,
  });

  factory RoleResponse.fromJson(Map<String, dynamic> json) =>
      _$RoleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RoleResponseToJson(this);
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
