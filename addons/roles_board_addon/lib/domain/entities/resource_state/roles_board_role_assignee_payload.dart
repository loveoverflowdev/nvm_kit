final class RolesBoardRoleAssigneePayload {
  final String roleId;
  final String addonInstanceCode;
  final String userId;

  RolesBoardRoleAssigneePayload({
    required this.roleId,
    required this.addonInstanceCode,
    required this.userId,
  });
}


/*
{
	"widgetRoleId":"657763459697477371",
  "featureFieldName": "assignee",
	"status":"PROCESSING"
}
*/