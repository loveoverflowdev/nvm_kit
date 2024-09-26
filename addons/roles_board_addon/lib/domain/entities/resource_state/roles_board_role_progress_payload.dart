final class RolesBoardRoleProgressPayload {
  final String addonId;
  final String fieldCode;
  final double progress;

  RolesBoardRoleProgressPayload({
    required this.addonId,
    required this.fieldCode,
    required this.progress,
  });

  Map<String, dynamic> toJson() => {
        "widgetRoleId": addonId,
        "featureFieldName": fieldCode,
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
