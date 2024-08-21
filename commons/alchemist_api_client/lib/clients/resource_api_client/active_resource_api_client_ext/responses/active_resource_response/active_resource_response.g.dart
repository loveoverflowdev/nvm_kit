// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceResponse _$ActiveResourceResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceResponse(
      id: json['id'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
      project: ActiveResourceProjectResponse.fromJson(
          json['project'] as Map<String, dynamic>),
      creator: ActiveResourceCreatorResponse.fromJson(
          json['createdByUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveResourceResponseToJson(
        ActiveResourceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
      'project': instance.project,
      'createdByUser': instance.creator,
    };
