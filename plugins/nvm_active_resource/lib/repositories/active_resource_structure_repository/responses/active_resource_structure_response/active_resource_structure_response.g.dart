// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_structure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceStructureResponse _$ActiveResourceStructureResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceStructureResponse(
      id: json['id'] as String,
      code: json['code'] as String,
      title: json['title'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) =>
              ActiveFieldStructureResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      actions: json['actions'] as List<dynamic>,
    );

Map<String, dynamic> _$ActiveResourceStructureResponseToJson(
        ActiveResourceStructureResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'fields': instance.fields,
      'actions': instance.actions,
    };
