import 'package:json_annotation/json_annotation.dart';

part 'active_field_structure_response.g.dart';

@JsonSerializable()
final class ActiveFieldStructureResponse {
  final String id;

  @JsonKey(name: 'fieldName')
  final String key;

  @JsonKey(name: 'fieldTitle')
  final String title;

  final int order;

  @JsonKey(name: 'fieldType')
  final dynamic type;

  @JsonKey(name: 'fieldPlaceholder')
  final String placeholder;

  @JsonKey(name: 'fieldDescription')
  final String description;

  final bool isRequired;
  final bool isUnique;
  final bool isMultipleValued;
  final bool searchable;
  final bool sortable;
  final bool filterable;
  final bool isConcrete;
  final bool showInExport;
  final bool showInImport;
  final dynamic createdBy;
  final dynamic updatedBy;
  final dynamic createdAt;
  final dynamic updatedAt;

  ActiveFieldStructureResponse({
    required this.id,
    required this.key,
    required this.title,
    required this.order,
    required this.type,
    required this.placeholder,
    required this.description,
    required this.isRequired,
    required this.isUnique,
    required this.isMultipleValued,
    required this.searchable,
    required this.sortable,
    required this.filterable,
    required this.isConcrete,
    required this.showInExport,
    required this.showInImport,
    required this.createdBy,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ActiveFieldStructureResponse.fromJson(Map<String, dynamic> json) =>
      _$ActiveFieldStructureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveFieldStructureResponseToJson(this);
}
