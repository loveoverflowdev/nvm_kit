import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'action_component.g.dart';

@JsonSerializable()
final class ActionComponent implements Component {
  final String actionCode;
  final String functionCode; // goto
  final Map<String, dynamic> attributes;

  ActionComponent({
    required this.actionCode,
    required this.functionCode,
    required this.attributes,
  });

  factory ActionComponent.fromJson(Map<String, dynamic> json) =>
      _$ActionComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActionComponentToJson(this);
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