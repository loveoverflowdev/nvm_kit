import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_action_component.g.dart';

@JsonSerializable()
final class ActiveActionComponent implements Component {
  final String actionCode;
  final String actionType; // goto
  // Nếu action không có quyền thì sẽ thông báo
  final Map<String, dynamic> liveAttributes;

  ActiveActionComponent({
    required this.actionCode,
    required this.actionType,
    required this.liveAttributes,
  });

  factory ActiveActionComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveActionComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveActionComponentToJson(this);
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
