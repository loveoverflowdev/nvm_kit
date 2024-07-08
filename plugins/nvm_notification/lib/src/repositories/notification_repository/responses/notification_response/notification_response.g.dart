// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationResponse _$NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    NotificationResponse(
      id: NotificationResponse._idFromJson(json['id']),
      notificationTitle: json['notificationTitle'] as String,
      notificationContent: json['notificationContent'] as String,
      actionList: (json['actions'] as List<dynamic>)
          .map((e) => ActionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotificationResponseToJson(
        NotificationResponse instance) =>
    <String, dynamic>{
      'id': NotificationResponse._idToJson(instance.id),
      'notificationTitle': instance.notificationTitle,
      'notificationContent': instance.notificationContent,
      'actions': instance.actionList,
    };
