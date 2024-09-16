import 'progress_status.dart';
import 'role_resource_state.dart';

final class RolesBoardResourceState {
  final String widgetBoardRoleId;
  final String typeCode;
  final double averageProgress;
  final ProgressStatus finalStatus;
  final List<RoleResourceState> widgetRoles;

  RolesBoardResourceState({
    required this.widgetBoardRoleId,
    required this.typeCode,
    required this.averageProgress,
    required this.finalStatus,
    required this.widgetRoles,
  });
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
  ],
*/
