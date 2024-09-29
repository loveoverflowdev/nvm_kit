import 'progress_status.dart';

final class RolesBoardRoleStatusPayload {
  final String roleId;
  final String addonInstanceCode;
  final ProgressStatus status;

  RolesBoardRoleStatusPayload({
    required this.roleId,
    required this.addonInstanceCode,
    required this.status,
  });
}


/*
{
	"widgetRoleId":"657763459697477371",
  "featureFieldName": "assignee",
	"status":"PROCESSING"
}
*/