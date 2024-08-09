// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_field_structure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveFieldStructureResponse _$ActiveFieldStructureResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveFieldStructureResponse(
      id: json['id'] as String,
      key: json['fieldName'] as String,
      title: json['fieldTitle'] as String,
      order: (json['order'] as num).toInt(),
      type: json['fieldType'],
      placeholder: json['fieldPlaceholder'] as String,
      description: json['fieldDescription'] as String,
      isRequired: json['isRequired'] as bool,
      isUnique: json['isUnique'] as bool,
      isMultipleValued: json['isMultipleValued'] as bool,
      searchable: json['searchable'] as bool,
      sortable: json['sortable'] as bool,
      filterable: json['filterable'] as bool,
      isConcrete: json['isConcrete'] as bool,
      showInExport: json['showInExport'] as bool,
      showInImport: json['showInImport'] as bool,
      createdBy: json['createdBy'],
      updatedBy: json['updatedBy'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );

Map<String, dynamic> _$ActiveFieldStructureResponseToJson(
        ActiveFieldStructureResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fieldName': instance.key,
      'fieldTitle': instance.title,
      'order': instance.order,
      'fieldType': instance.type,
      'fieldPlaceholder': instance.placeholder,
      'fieldDescription': instance.description,
      'isRequired': instance.isRequired,
      'isUnique': instance.isUnique,
      'isMultipleValued': instance.isMultipleValued,
      'searchable': instance.searchable,
      'sortable': instance.sortable,
      'filterable': instance.filterable,
      'isConcrete': instance.isConcrete,
      'showInExport': instance.showInExport,
      'showInImport': instance.showInImport,
      'createdBy': instance.createdBy,
      'updatedBy': instance.updatedBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
