// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_script_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusScriptResponse _$StatusScriptResponseFromJson(
        Map<String, dynamic> json) =>
    StatusScriptResponse(
      requestStatus: (json['requestStatus'] as num).toInt(),
      notificationStatus: StatusResponse.fromJson(
          json['notificationStatus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusScriptResponseToJson(
        StatusScriptResponse instance) =>
    <String, dynamic>{
      'requestStatus': instance.requestStatus,
      'notificationStatus': instance.notificationStatus,
    };
