import 'package:json_annotation/json_annotation.dart';

import '../active_field_structure_response/active_field_structure_response.dart';

part 'active_resource_structure_response.g.dart';

@JsonSerializable()
final class ActiveResourceStructureResponse {
  final String id;
  final String code;
  final String title;
  final List<ActiveFieldStructureResponse> fields;

  ActiveResourceStructureResponse({
    required this.id,
    required this.code,
    required this.title,
    required this.fields,
  });

  factory ActiveResourceStructureResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveResourceStructureResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ActiveResourceStructureResponseToJson(this);
}
