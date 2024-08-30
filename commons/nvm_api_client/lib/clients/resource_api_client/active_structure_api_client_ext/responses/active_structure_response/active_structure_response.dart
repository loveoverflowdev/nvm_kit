import 'package:json_annotation/json_annotation.dart';

import '../active_field_response/active_field_response.dart';

part 'active_structure_response.g.dart';

enum AddonType { comment, rolesBoard }

@JsonSerializable()
final class ActiveStructureResponse {
  final String id;

  @JsonKey(name: 'activeStructureCode')
  final String code;

  @JsonKey(name: 'activeStructureTitle')
  final String title;

  final List<ActiveFieldResponse> fields;

  @JsonKey(name: 'activeFeatures', fromJson: _supportedAddonTypesFromJson)
  final List<AddonType> supportedAddonTypes;

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

List<AddonType> _supportedAddonTypesFromJson(Map<String, dynamic> json) {
  return () sync* {
    for (final entry in json.entries) {
      switch (entry.key) {
        case 'widgetBoardRole':
          if (entry.value != false && entry.value != null) {
            yield AddonType.rolesBoard;
          }
          break;
        case 'widgetComment':
          if (entry.value != false && entry.value != null) {
            yield AddonType.comment;
          }
          break;
      }
    }
  }()
      .toList();
}
