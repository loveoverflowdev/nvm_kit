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

  factory AddonResponse.fromJson(Map<String, dynamic> json) {
    switch (AddonFeatureType.fromKey(json['featureType'])) {
      case AddonFeatureType.rolesBoard:
        return RolesBoardStateResponse.fromJson(json);
    }
  }

  Map<String, dynamic> toJson() {
    return switch (this) {
      RolesBoardStateResponse() => (this as RolesBoardStateResponse).toJson(),
      _ => throw UnimplementedError(),
    };
  }
}

// final class AddonResponseConverter
//     implements JsonConverter<AddonResponse, MapEntry<String, dynamic>> {

//     const AddonResponseConverter();
    
//     @override
//     AddonResponse fromJson(MapEntry<String, dynamic> json) {
//       return switch (json.key) {
//         'assignee' => AssigneeResponse.fromJson(json.value),
//         _ => throw UnimplementedError(),
//       };
//     }

//     @override
//     MapEntry<String, dynamic> toJson(AddonResponse object) {
//       if (this is AssigneeResponse) {
//         return (object as AssigneeResponse).toJson();
//       }
//       throw Exception('Unknown AddonResponse type');
//     }

// }
// final class ActiveViewComponentConverter
//     implements JsonConverter<ActiveViewComponent, Map<String, dynamic>> {
//   const ActiveViewComponentConverter();

//   @override
//   ActiveViewComponent fromJson(Map<String, dynamic> json) {
//     return switch (json['type']) {
//       'ActiveCollectionComponent' => ActiveCollectionComponent.fromJson(json),
//       'ActiveDetailComponent' => ActiveDetailComponent.fromJson(json),
//       'ActiveFormComponent' => ActiveFormComponent.fromJson(json),
//       _ => throw UnimplementedError(),
//     };
//   }

//   @override
//   Map<String, dynamic> toJson(ActiveViewComponent object) {
//     return switch (object.type) {
//       'ActiveCollectionComponent' =>
//         (object as ActiveCollectionComponent).toJson(),
//       'ActiveDetailComponent' => (object as ActiveDetailComponent).toJson(),
//       'ActiveFormComponent' => (object as ActiveFormComponent).toJson(),
//       _ => throw UnimplementedError(),
//     };
//   }
// }

/*
"liveFeatures": {
  "assignee": {
      "widgetBoardRoleId": "657763459693282282",
      "averageProgress": 0,
      "finalStatus": "NOT_STARTED",
      "widgetRoles": [
          {
              "widgetRoleId": "664886483190025000",
              "assignedBy": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886778854901945",
              "assignedBy": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886825533312168",
              "assignedBy": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886861579159215",
              "assignedBy": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886897125885814",
              "assignedBy": "0",
              "status": "NOT_STARTED",
              "progress": 0
          },
          {
              "widgetRoleId": "664886937521226732",
              "assignedBy": "0",
              "status": "NOT_STARTED",
              "progress": 0
          }
      ],
      "featureType": "WIDGET_BOARD_ROLE"
    }
  }
}
*/

  