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
      supportedAddonTypes: (json['supportedAddonTypes'] as List<dynamic>)
          .map((e) => $enumDecode(_$AddonTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$ActiveStructureToJson(ActiveStructure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'fields': instance.fields,
      'supportedAddonTypes': instance.supportedAddonTypes
          .map((e) => _$AddonTypeEnumMap[e]!)
          .toList(),
    };

const _$AddonTypeEnumMap = {
  AddonType.comment: 'comment',
  AddonType.rolesBoard: 'rolesBoard',
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
  ActiveFieldDataType.selectListLiveResource: 'selectListLiveResource',
  ActiveFieldDataType.singleUserSelection: 'singleUserSelection',
  ActiveFieldDataType.multiUserSelection: 'multiUserSelection',
  ActiveFieldDataType.multiUserCheckbox: 'multiUserCheckbox',
  ActiveFieldDataType.unsupported: 'unsupported',
};
