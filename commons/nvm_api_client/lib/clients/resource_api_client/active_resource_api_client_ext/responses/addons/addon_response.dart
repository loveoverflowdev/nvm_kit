import 'roles_board_state_response.dart';

enum AddonFeatureType {
  rolesBoard('WIDGET_BOARD_ROLE');

  final String key;
  const AddonFeatureType(this.key);

  factory AddonFeatureType.fromKey(String key) {
    for (final type in AddonFeatureType.values) {
      if (type.key == key) {
        return type;
      }
    }
    throw UnimplementedError('AddonFeatureType: Not found key $key');
  }
}

abstract class AddonResponse {
  AddonFeatureType get type;

  AddonResponse();

  factory AddonResponse.fromEntry(MapEntry<String, dynamic> entry) {
    switch (AddonFeatureType.fromKey(entry.value['featureType'])) {
      case AddonFeatureType.rolesBoard:
        return RolesBoardResourceStateResponse.fromEntry(entry);
    }
  }

  Map<String, dynamic> toJson() {
    return switch (this) {
      RolesBoardResourceStateResponse() => (this as RolesBoardResourceStateResponse).toJson(),
      _ => throw UnimplementedError(),
    };
  }
}

/*
"liveFeatures": {
  "assignee": {
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
          {
              "widgetRoleId": "664886778854901945",
              "assignedTo": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886825533312168",
              "assignedTo": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886861579159215",
              "assignedTo": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886897125885814",
              "assignedTo": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886937521226732",
              "assignedTo": "0",
              "status": "NOT_STARTED",
              "progress": 0
          }
      ],
      "featureType": "WIDGET_BOARD_ROLE"
    }
  }
}
*/

  