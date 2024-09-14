/*
{
  "widgetRoleId": "664886483190025000",
  "assignedBy": "0",
  "status": "NOT_STARTED",
  "progress": 0
},
*/

final class RoleResourceState {
  final String roleId;
  final String assignedToUserId;
  final String status;
  final double progress;

  RoleResourceState({
    required this.roleId,
    required this.assignedToUserId,
    required this.status,
    required this.progress,
  });
}
