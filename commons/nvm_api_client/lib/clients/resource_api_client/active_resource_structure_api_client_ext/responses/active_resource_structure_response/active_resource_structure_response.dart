import 'package:json_annotation/json_annotation.dart';

import '../active_field_structure_response/active_field_structure_response.dart';

part 'active_resource_structure_response.g.dart';

@JsonSerializable()
final class ActiveStructureResponse {
  final String id;
  final String code;
  final String title;
  final List<ActiveFieldStructureResponse> fields;

  ActiveStructureResponse({
    required this.id,
    required this.code,
    required this.title,
    required this.fields,
  });

  factory ActiveStructureResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveStructureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveStructureResponseToJson(this);
}
