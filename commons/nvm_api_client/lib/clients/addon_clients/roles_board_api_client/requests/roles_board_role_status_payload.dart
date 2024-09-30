import '../../../resource_api_client.dart' show ProgressStatusResponse;

final class RolesBoardRoleStatusPayload {
  final String roleId;
  final String addonInstanceCode;
  final ProgressStatusResponse status;

  RolesBoardRoleStatusPayload({
    required this.roleId,
    required this.addonInstanceCode,
    required this.status,
  });

  Map<String, dynamic> toJson() => {
        "widgetRoleId": roleId,
        "featureFieldName": addonInstanceCode,
        "status": status.toString(),
      };
}

/*
{
	"widgetRoleId":"657763459697477371",
    "featureFieldName": "assignee",
	"status":"PROCESSING"
}
*/