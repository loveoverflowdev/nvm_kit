import 'package:json_annotation/json_annotation.dart';

import '../active_field_response/active_field_response.dart';
import 'addon_type_response.dart';

part 'active_structure_response.g.dart';

@JsonSerializable()
final class ActiveStructureResponse {
  final String id;

  @JsonKey(name: 'activeStructureCode')
  final String code;

  @JsonKey(name: 'activeStructureTitle')
  final String title;

  @JsonKey(name: 'activeFields')
  final List<ActiveFieldResponse> fields;

  @JsonKey(
    name: 'activeFeatures',
    fromJson: _supportedAddonTypesFromJson,
    includeToJson: false,
  )
  final List<AddonTypeResponse> supportedAddonTypes;

  ActiveStructureResponse({
    required this.id,
    required this.code,
    required this.title,
    required this.fields,
    required this.supportedAddonTypes,
  });

  factory ActiveStructureResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveStructureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveStructureResponseToJson(this);
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
*/

List<AddonTypeResponse> _supportedAddonTypesFromJson(
    Map<String, dynamic> json) {
  return () sync* {
    for (final entry in json.entries) {
      switch (entry.key) {
        case 'widgetBoardRole':
          if (entry.value != false &&
              entry.value != null &&
              (entry.value['featureFields'] as Iterable?)?.isNotEmpty == true) {
            yield AddonTypeResponse.rolesBoard(
              configurations: (entry.value['featureFields'] as Iterable).map(
                (e) {
                  return RolesBoardAddonConfiguration(
                    fieldCode: e['featureFieldName'],
                    addonId: e['widgetId'],
                    type: e['featureType'],
                  );
                },
              ).toList(),
            );
          }
          break;
        case 'widgetComment':
          if (entry.value != false && entry.value != null) {
            yield AddonTypeResponse.comment();
          }
          break;
      }
    }
  }()
      .toList();
}
