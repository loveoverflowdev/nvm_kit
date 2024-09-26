final class RolesBoardRoleStatusPayload {
  final String addonId;
  final String fieldCode;
  final String status;

  RolesBoardRoleStatusPayload({
    required this.addonId,
    required this.fieldCode,
    required this.status,
  });

  Map<String, dynamic> toJson() => {
        "widgetRoleId": addonId,
        "featureFieldName": fieldCode,
        "status": status,
      };
}

/*
{
	"widgetRoleId":"657763459697477371",
    "featureFieldName": "assignee",
	"status":"PROCESSING"
}
*/