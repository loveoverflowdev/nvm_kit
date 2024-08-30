// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveResourceResponse _$ActiveResourceResponseFromJson(
        Map<String, dynamic> json) =>
    ActiveResourceResponse(
      id: json['id'] as String,
      liveAttributes: json['liveAttributes'] as Map<String, dynamic>?,
      projectId: json['projectId'] as String?,
      creator: json['createdByUser'] == null
          ? null
          : ActiveResourceCreatorResponse.fromJson(
              json['createdByUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveResourceResponseToJson(
        ActiveResourceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'liveAttributes': instance.liveAttributes,
      'projectId': instance.projectId,
      'createdByUser': instance.creator,
    };
