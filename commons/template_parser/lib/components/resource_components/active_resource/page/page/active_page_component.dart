import 'package:json_annotation/json_annotation.dart';
import '../../../../resource_components.dart';
import '../action/active_action_component.dart';

part 'active_page_component.g.dart';

@JsonSerializable()
final class ActivePageComponent {
  final String title;
  final String contextName;
  final String screenType;
  // final List<StateComponent> pageStates;
  final List<ActiveActionComponent> pageActions;
  final ActiveCollectionComponent collection;
  final ActiveDetailComponent detail;

  ActivePageComponent({
    required this.title,
    required this.contextName,
    required this.screenType,
    required this.pageActions,
    required this.collection,
    required this.detail,
  });

  factory ActivePageComponent.fromJson(Map<String, dynamic> json) =>
      _$ActivePageComponentFromJson(json);
  Map<String, dynamic> toJson() => _$ActivePageComponentToJson(this);
}

/*
"UserStoryHomeScreen": {
      "title": "User Story",
      "contextName": "UserStoryHomeScreen",
      "requiredAuth": true,
      "screenType": "UserStory",
      "screenState": {
        "listView": {
          "fields": ["story_name"]
          "filtering": [],
          "limit": 10,
          "offset": 0
        }
      },
      "screenActions": {
          "createUserStory": {
              "goto": "UserStoryCreateScreen",
              "screenInput": {
                  "resrouceStructureId": "652412217962007691"
              }
          }
      },
      "listView": {
          "useComponent": "UserStoryListViewComponent",
          "componentData": {
            "contextName": 
            "title": "User Story List",
            "resrouceStructureId": "652412217962007691",
            "tileStruct": {
                "title": {
                  "type": "ActiveFieldStructure",
                  "activeFieldStructureName": "story_name",
                    "goto": "UserStoryDetailScreen",
                    "screenInput": {
                        "resrouceStructureId": "652412217962007691",
                        "id": "this"
                    }
                },
                "tileBottom": {
                    "useComponent": "GenericTagListComponent",
                    "componentData": {
                        "title": {
                            "type": "ActiveFieldStructure",
                            "activeFieldStructureId": "3489589745745232347"
                        },
                        "changeState": {
                          "of": "UserStoryHomeScreen.listView.filtering",
                          "state": [
                            {
                              "changeMode": "append",
                              "filtering": {
                                "key": {
                                    "type": "ActiveFieldStructure",
                                    "activeFieldStructureId": "3489589745745232347"
                                },
                                "value": "this"
                              }
                            }
                          ]
                        }
                    }
              }
          }
        }
      }
    }
*/