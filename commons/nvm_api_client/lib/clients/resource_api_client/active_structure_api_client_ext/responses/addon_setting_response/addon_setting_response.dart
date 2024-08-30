import 'package:freezed_annotation/freezed_annotation.dart';

enum AddonType {
  commentWidget,
  boardRoleWidget,
}

@freezed
class AddonSettingResponse {
  AddonSettingResponse._();
  AddonSettingResponse.comment({
    required String enable,
  }) = CommentAddonSettingResponse;
  AddonSettingResponse.rolesBoard({

  }) = RolesBoardAddonSettingResponse;
}

class RolesBoardAddonField {
  final String fieldName;
  final String id;
  final String type;

  RolesBoardAddonField({
    required this.fieldName,
    required this.id,
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
