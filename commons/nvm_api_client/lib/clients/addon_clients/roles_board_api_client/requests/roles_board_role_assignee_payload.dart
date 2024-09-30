final class RolesBoardRoleAssigneePayload {
  final String roleId;
  final String addonInstanceCode;
  final String userId;

  RolesBoardRoleAssigneePayload({
    required this.roleId,
    required this.addonInstanceCode,
    required this.userId,
  });

  Map<String, dynamic> toJson() => {
        "widgetRoleId": roleId,
        "featureFieldName": addonInstanceCode,
        "assignedTo": userId,
      };
}
