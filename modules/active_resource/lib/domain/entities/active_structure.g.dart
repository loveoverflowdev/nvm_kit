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
          .map((e) => ActiveField.fromJson(e as Map<String, dynamic>))
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

ActiveField _$ActiveFieldFromJson(Map<String, dynamic> json) => ActiveField(
      id: json['id'] as String,
      key: json['key'] as String,
      title: json['title'] as String,
      order: (json['order'] as num).toInt(),
      type: $enumDecode(_$ActiveFieldDataTypeEnumMap, json['type']),
      placeholder: json['placeholder'] as String,
      description: json['description'] as String,
      valueActiveStructureId: json['valueActiveStructureId'] as String,
    );

Map<String, dynamic> _$ActiveFieldToJson(ActiveField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'title': instance.title,
      'order': instance.order,
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
  ActiveFieldDataType.checkboxOne: 'checkboxOne',
  ActiveFieldDataType.checkboxListLiveResource: 'checkboxListLiveResource',
  ActiveFieldDataType.selectOneLiveResource: 'selectOneLiveResource',
  ActiveFieldDataType.selectListLiveResource: 'selectListLiveResource',
  ActiveFieldDataType.selectOneUser: 'selectOneUser',
  ActiveFieldDataType.selectUserList: 'selectUserList',
  ActiveFieldDataType.checkboxListUser: 'checkboxListUser',
  ActiveFieldDataType.unsupported: 'unsupported',
};
