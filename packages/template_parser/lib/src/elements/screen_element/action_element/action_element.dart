import 'package:json_annotation/json_annotation.dart';

part 'action_element.g.dart';

@JsonSerializable()
final class ActionElement {
  final String actionCode;
  final String functionCode; // goto
  final Map<String, dynamic> attributes;

  ActionElement({
    required this.actionCode,
    required this.functionCode,
    required this.attributes,
  });

  factory ActionElement.fromJson(Map<String, dynamic> json) =>
      _$ActionElementFromJson(json);

  Map<String, dynamic> toJson() => _$ActionElementToJson(this);
}

/*
"screenActions": {
          "createUserStory": {
              "goto": "UserStoryCreateScreen",
              "screenInput": {
                  "resrouceStructureId": "652412217962007691"
              }
          }
      },
*/