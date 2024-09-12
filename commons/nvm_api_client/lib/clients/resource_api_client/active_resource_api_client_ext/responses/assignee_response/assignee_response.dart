import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class AssigneeResponse {
  final String widgetBoardRoleId;
  final int averageProgress;
  final String finalStatus;

  @JsonKey(name: 'widgetRoles')
  final List<RoleResponse> roles;
}

@JsonSerializable()
class RoleResponse {
  @JsonKey(name: 'widgetRoleId')
  final String id;
  final String? assignedByUserId;
  final String status;
  final int progress;
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
