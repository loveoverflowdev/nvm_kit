// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_structure_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveStructureResponse _$ActiveStructureResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveStructureResponse(
      id: json['id'] as String,
      code: json['activeStructureCode'] as String,
      title: json['activeStructureTitle'] as String,
      fields: (json['activeFields'] as List<dynamic>)
          .map((e) => ActiveFieldResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportedAddonTypes: _supportedAddonTypesFromJson(
          json['activeFeatures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveStructureResponseToJson(
        ActiveStructureResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activeStructureCode': instance.code,
      'activeStructureTitle': instance.title,
      'activeFields': instance.fields,
    };
