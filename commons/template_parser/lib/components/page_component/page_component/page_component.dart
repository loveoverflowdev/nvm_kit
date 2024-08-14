import 'package:json_annotation/json_annotation.dart';
import '../state_component/state_component.dart';
import '../action_component/action_component.dart';

part 'page_component.g.dart';

@JsonSerializable()
final class PageComponent {
  final String title;
  final String contextName;
  final bool requiredAuth;
  final String screenType;
  final List<StateComponent> pageStates;
  final List<ActionComponent> pageActions;

  PageComponent({
    required this.title,
    required this.contextName,
    required this.requiredAuth,
    required this.screenType,
    required this.pageStates,
    required this.pageActions,
  });

  factory PageComponent.fromJson(Map<String, dynamic> json) =>
      _$PageComponentFromJson(json);
  Map<String, dynamic> toJson() => _$PageComponentToJson(this);
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