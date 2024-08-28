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
    );

Map<String, dynamic> _$ActiveStructureToJson(ActiveStructure instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'fields': instance.fields,
    };

ActiveField _$ActiveFieldFromJson(Map<String, dynamic> json) => ActiveField(
      id: json['id'] as String,
      key: json['key'] as String,
      title: json['title'] as String,
      order: (json['order'] as num).toInt(),
      type: json['type'],
      placeholder: json['placeholder'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ActiveFieldToJson(ActiveField instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'title': instance.title,
      'order': instance.order,
      'type': instance.type,
      'placeholder': instance.placeholder,
      'description': instance.description,
    };
