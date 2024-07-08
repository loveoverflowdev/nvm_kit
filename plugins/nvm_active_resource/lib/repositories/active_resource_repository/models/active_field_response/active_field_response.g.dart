// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_field_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveFieldResponse _$ActiveFieldResponseFromJson(Map<String, dynamic> json) =>
    ActiveFieldResponse(
      id: json['id'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
      project: ActiveResourceProjectResponse.fromJson(
          json['project'] as Map<String, dynamic>),
      creator: ActiveResourceCreator.fromJson(
          json['createdByUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveFieldResponseToJson(
        ActiveFieldResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'project': instance.project,
      'createdByUser': instance.creator,
    };
