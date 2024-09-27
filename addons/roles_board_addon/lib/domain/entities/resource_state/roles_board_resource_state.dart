import 'progress_status.dart';
import 'role_resource_state.dart';

final class RolesBoardResourceState {
  final String boardRoleId;
  final String typeCode;
  final double averageProgress;
  final ProgressStatus finalStatus;
  final List<RoleResourceState> roleStates;
  final String addonInstanceCode;

  RolesBoardResourceState({
    required this.boardRoleId,
    required this.typeCode,
    required this.averageProgress,
    required this.finalStatus,
    required this.roleStates,
    required this.addonInstanceCode,
  });

  factory RolesBoardResourceState.empty() {
    return RolesBoardResourceState(
      boardRoleId: '',
      typeCode: '',
      averageProgress: 0,
      finalStatus: ProgressStatus.notStarted,
      roleStates: [],
      addonInstanceCode: '',
    );
  }

  bool get isEmpty => boardRoleId == '' || boardRoleId == '0';
}

/*
"widgetBoardRoleId": "657763459693282282",
  "averageProgress": 0,
  "finalStatus": "NOT_STARTED",
  "widgetRoles": [
    {
        "widgetRoleId": "664886483190025000",
        "assignedTo": "0",
        "status": "NOT_STARTED",
        "progress": 0
    },
  ],
*/
