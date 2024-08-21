// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) =>
    StatusResponse(
      statusName: json['statusName'] as String,
      statusCode: json['statusCode'] as String,
      statusIcon: StatusIconResponse.fromJson(
          json['statusIcon'] as Map<String, dynamic>),
      statusColor: StatusColorResponse.fromJson(
          json['statusColor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatusResponseToJson(StatusResponse instance) =>
    <String, dynamic>{
      'statusName': instance.statusName,
      'statusCode': instance.statusCode,
      'statusIcon': instance.statusIcon,
      'statusColor': instance.statusColor,
    };
