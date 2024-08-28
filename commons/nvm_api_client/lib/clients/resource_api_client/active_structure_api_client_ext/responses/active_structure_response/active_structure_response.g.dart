// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_structure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveStructureResponse _$ActiveStructureResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveStructureResponse(
      id: json['id'] as String,
      code: json['code'] as String,
      title: json['title'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => ActiveFieldResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActiveStructureResponseToJson(
        ActiveStructureResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'fields': instance.fields,
    };
