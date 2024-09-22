import 'package:freezed_annotation/freezed_annotation.dart';

part 'addon_type.freezed.dart';

@freezed
class AddonType with _$AddonType {
  AddonType._();

  factory AddonType.comment() = _Comment;
  factory AddonType.rolesBoard({
    required List<RolesBoardAddonConfiguration> configurations,
  }) = _RolesBoard;
  factory AddonType.unsupported() = _Unsupported;

  bool get isComment => this is _Comment;
  bool get isRolesBoard => this is _RolesBoard;
  bool get isUnsupported => this is _Unsupported;
}

class RolesBoardAddonConfiguration {
  final String fieldCode;
  final String widgetId;
  final String type;

  RolesBoardAddonConfiguration({
    required this.fieldCode,
    required this.widgetId,
    required this.type,
  });
}

/*
"widgetBoardRole": {
  "featureFields": [
      {
          "featureFieldName": "assignee",
          "widgetId": "657763459693282282",
          "featureType": "WIDGET_BOARD_ROLE"
      }
  ],
  "featureType": "WIDGET_BOARD_ROLE"
},
"widgetComment": true
*/
