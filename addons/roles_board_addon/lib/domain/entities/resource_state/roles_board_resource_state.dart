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
  ],
*/

import 'role_resource_state.dart';

final class RolesBoardResourceState {
  final String widgetBoardRoleId;
  final double averageProgress;
  final String finalStatus;
  final List<RoleResourceState> widgetRoles;

  RolesBoardResourceState({
    required this.widgetBoardRoleId,
    required this.averageProgress,
    required this.finalStatus,
    required this.widgetRoles,
  });
}
