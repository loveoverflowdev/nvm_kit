final class RolesBoardSelection {
  final String rolesBoardId;
  final List<String> roleIdList;

  RolesBoardSelection({
    required this.rolesBoardId,
    required this.roleIdList,
  });

  Map<String, dynamic> toJson() => {
        'widgetBoardRoleId': rolesBoardId,
        'widgetRoles': roleIdList
            .map(
              (e) => {'widgetRoleId': e},
            )
            .toList(),
      };
}

/*
"assignee": {
  "widgetBoardRoleId": "657763459693282282",
  "widgetRoles": [
      {
          "widgetRoleId": "664886483190025000",
          "assignedTo": "0",
          "status": "NOT_STARTED",
          "progress": 0
      }
  ],
  }
*/
