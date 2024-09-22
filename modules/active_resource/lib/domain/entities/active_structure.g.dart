// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveStructure _$ActiveStructureFromJson(Map<String, dynamic> json) =>
    ActiveStructure(
      id: json['id'] as String,
      code: json['code'] as String,
      title: json['title'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => ActiveFieldStructure.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportedAddonTypes: _supportedAddonTypesFromJson(
          json['supportedAddonTypes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveStructureToJson(ActiveStructure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'fields': instance.fields,
      'supportedAddonTypes':
          _supportedAddonTypesToJson(instance.supportedAddonTypes),
    };

ActiveFieldStructure _$ActiveFieldStructureFromJson(
        Map<String, dynamic> json) =>
    ActiveFieldStructure(
      id: json['id'] as String,
      key: json['key'] as String,
      title: json['title'] as String,
      order: (json['order'] as num).toInt(),
      type: $enumDecode(_$ActiveFieldDataTypeEnumMap, json['type']),
      placeholder: json['placeholder'] as String,
      description: json['description'] as String,
      valueActiveStructureId: json['valueActiveStructureId'] as String,
      isRequired: json['isRequired'] as bool,
    );

Map<String, dynamic> _$ActiveFieldStructureToJson(
        ActiveFieldStructure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'title': instance.title,
      'order': instance.order,
      'isRequired': instance.isRequired,
      'type': _$ActiveFieldDataTypeEnumMap[instance.type]!,
      'placeholder': instance.placeholder,
      'description': instance.description,
      'valueActiveStructureId': instance.valueActiveStructureId,
    };

const _$ActiveFieldDataTypeEnumMap = {
  ActiveFieldDataType.shortText: 'shortText',
  ActiveFieldDataType.paragraph: 'paragraph',
  ActiveFieldDataType.date: 'date',
  ActiveFieldDataType.dateTime: 'dateTime',
  ActiveFieldDataType.integer: 'integer',
  ActiveFieldDataType.numeric: 'numeric',
  ActiveFieldDataType.email: 'email',
  ActiveFieldDataType.url: 'url',
  ActiveFieldDataType.textList: 'textList',
  ActiveFieldDataType.binaryCheckbox: 'binaryCheckbox',
  ActiveFieldDataType.multiActiveResourceCheckbox:
      'multiActiveResourceCheckbox',
  ActiveFieldDataType.singleActiveResourceSelection:
      'singleActiveResourceSelection',
  ActiveFieldDataType.multiResourceSelection: 'multiResourceSelection',
  ActiveFieldDataType.singleUserSelection: 'singleUserSelection',
  ActiveFieldDataType.multiUserSelection: 'multiUserSelection',
  ActiveFieldDataType.multiUserCheckbox: 'multiUserCheckbox',
  ActiveFieldDataType.unsupported: 'unsupported',
};
