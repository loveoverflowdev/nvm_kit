import 'package:json_annotation/json_annotation.dart';
import 'state_element/state_element.dart';
import 'action_element/action_element.dart';
import 'component_element/component_element.dart';

part 'screen_element.g.dart';

@JsonSerializable()
final class ScreenElement {
  final String title;
  final String screenCode;
  final String contextName;
  final bool requiredAuth;
  final String screenType;
  final List<StateElement> screenStates;
  final List<ActionElement> screenActions;
  final List<ComponentElement> screenComponents;

  ScreenElement({
    required this.title,
    required this.screenCode,
    required this.contextName,
    required this.requiredAuth,
    required this.screenType,
    required this.screenStates,
    required this.screenActions,
    required this.screenComponents,
  });

  factory ScreenElement.fromJson(Map<String, dynamic> json) =>
      _$ScreenElementFromJson(json);
  Map<String, dynamic> toJson() => _$ScreenElementToJson(this);
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