/*
{
  "widgetRoleId": "664886483190025000",
  "assignedTo": "0",
  "status": "NOT_STARTED",
  "progress": 0
},
*/

import 'progress_status.dart';

final class RoleResourceState {
  final String roleId;
  final String assignedToUserId;
  final ProgressStatus status;
  final double progress;

  RoleResourceState({
    required this.roleId,
    required this.assignedToUserId,
    required this.status,
    required this.progress,
  });
}
