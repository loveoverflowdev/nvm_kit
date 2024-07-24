import 'dart:convert';

import 'elements/elements.dart';

final class TemplateParser {
  static TemplateElement parseJsonString(String jsonString) {
    final Map<String, dynamic> jsonData = jsonDecode(jsonString);
    return TemplateElement.fromJson(jsonData);
  }

  static TemplateElement parseJson(Map<String, dynamic> json) {
    return TemplateElement.fromJson(json);
  }
}

/*
{
  "appCode": "HERA",
  "index": "ProjectHomeScreen",
  "screens": {
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
    },
    "UserStoryCreateScreen": {
      "requiredAuth": true
    }
  }
}

*/