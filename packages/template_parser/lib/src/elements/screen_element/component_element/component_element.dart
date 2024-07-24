import 'package:json_annotation/json_annotation.dart';

part 'component_element.g.dart';

@JsonSerializable()
class ComponentElement {
  final String componentCode;
  final String componentType; // UserStoryListViewComponent
  final Map<String, dynamic> attributes;
  final List<ComponentElement> children;

  ComponentElement({
    required this.componentCode,
    required this.componentType,
    required this.attributes,
    this.children = const [],
  });

  factory ComponentElement.fromJson(Map<String, dynamic> json) =>
      _$ComponentElementFromJson(json);

  Map<String, dynamic> toJson() => _$ComponentElementToJson(this);
}

/*
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
*/