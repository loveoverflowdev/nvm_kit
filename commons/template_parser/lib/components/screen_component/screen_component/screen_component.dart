import 'package:json_annotation/json_annotation.dart';
import '../state_component/state_component.dart';
import '../action_component/action_component.dart';

part 'screen_component.g.dart';

@JsonSerializable()
final class ScreenComponent {
  final String title;
  final String screenCode;
  final String contextName;
  final bool requiredAuth;
  final String screenType;
  final List<StateComponent> screenStates;
  final List<ActionComponent> screenActions;
  final List<ScreenComponent> screenComponents;

  ScreenComponent({
    required this.title,
    required this.screenCode,
    required this.contextName,
    required this.requiredAuth,
    required this.screenType,
    required this.screenStates,
    required this.screenActions,
    required this.screenComponents,
  });

  factory ScreenComponent.fromJson(Map<String, dynamic> json) =>
      _$ScreenComponentFromJson(json);
  Map<String, dynamic> toJson() => _$ScreenComponentToJson(this);
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