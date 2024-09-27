final class RolesBoardRoleProgressPayload {
  final String roleId;
  final String addonInstanceCode;
  final double progress;

  RolesBoardRoleProgressPayload({
    required this.roleId,
    required this.addonInstanceCode,
    required this.progress,
  });

  Map<String, dynamic> toJson() => {
        "widgetRoleId": roleId,
        "featureFieldName": addonInstanceCode,
        "progress": progress,
      };
}

/*
{
	"widgetRoleId":"657763459697477371",
    "featureFieldName": "assignee",
	"status":"PROCESSING"
}

{
	"widgetRoleId":"657763459697477551",
    "featureFieldName": "widgetBoardRole_01",
	"progress":20
}

{
	"widgetRoleId":"657763459697477551",
    "featureFieldName": "widgetBoardRole_01",
	"assignedBy":605303072528270018
}

*/
