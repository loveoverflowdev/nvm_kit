import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_structure.g.dart';

enum AddonType { comment, rolesBoard }

@JsonSerializable()
final class ActiveStructure {
  final String id;
  final String code;
  final String title;
  final List<ActiveField> fields;
  final List<AddonType> supportedAddonTypes;

  ActiveStructure({
    required this.id,
    required this.code,
    required this.title,
    required this.fields,
    required this.supportedAddonTypes,
  });

  Map<String, dynamic> toJson() => _$ActiveStructureToJson(this);

  factory ActiveStructure.fromJson(Map<String, dynamic> json) =>
      _$ActiveStructureFromJson(json);
}

@JsonSerializable()
final class ActiveField {
  final String id;
  final String key;
  final String title;
  final int order;
  final dynamic type;
  final String placeholder;
  final String description;
  // final bool isRequired;
  // final bool isUnique;
  // final bool isMultipleValued;
  // final bool searchable;
  // final bool sortable;
  // final bool filterable;
  // final bool isConcrete;
  // final bool showInExport;
  // final bool showInImport;
  // final dynamic createdBy;
  // final dynamic updatedBy;
  // final dynamic createdAt;
  // final dynamic updatedAt;

  ActiveField({
    required this.id,
    required this.key,
    required this.title,
    required this.order,
    required this.type,
    required this.placeholder,
    required this.description,
    // required this.isRequired,
    // required this.isUnique,
    // required this.isMultipleValued,
    // required this.searchable,
    // required this.sortable,
    // required this.filterable,
    // required this.isConcrete,
    // required this.showInExport,
    // required this.showInImport,
    // required this.createdBy,
    // required this.updatedBy,
    // required this.createdAt,
    // required this.updatedAt,
  });

  Map<String, dynamic> toJson() => _$ActiveFieldToJson(this);

  factory ActiveField.fromJson(Map<String, dynamic> json) =>
      _$ActiveFieldFromJson(json);
}
