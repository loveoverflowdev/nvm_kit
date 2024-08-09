// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionResponse _$ActionResponseFromJson(Map<String, dynamic> json) =>
    ActionResponse(
      id: ActionResponse._idFromJson(json['id']),
      browserUrl: json['url'] as String?,
      xhrRequestUrl: json['requestUrl'] as String?,
      actionType: json['actionType'] as String,
      actionColor: ActionColorResponse.fromJson(
          json['actionColor'] as Map<String, dynamic>),
      actionStatus:
          StatusResponse.fromJson(json['actionStatus'] as Map<String, dynamic>),
      actionName: json['actionName'] as String,
      xhrRequestMethod: ActionResponse._xhrRequestMethodFromJson(
          json['requestMethod'] as String?),
      statusScriptList: (json['statusScripts'] as List<dynamic>?)
              ?.map((e) =>
                  StatusScriptResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ActionResponseToJson(ActionResponse instance) =>
    <String, dynamic>{
      'id': ActionResponse._idToJson(instance.id),
      'requestUrl': instance.xhrRequestUrl,
      'requestMethod':
          ActionResponse._xhrRequestMethodToJson(instance.xhrRequestMethod),
      'url': instance.browserUrl,
      'actionName': instance.actionName,
      'actionType': instance.actionType,
      'actionColor': instance.actionColor,
      'actionStatus': instance.actionStatus,
      'statusScripts': instance.statusScriptList,
    };
