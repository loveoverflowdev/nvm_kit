// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_page_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivePageComponent _$ActivePageComponentFromJson(Map<String, dynamic> json) =>
    ActivePageComponent(
      title: json['title'] as String,
      contextName: json['contextName'] as String,
      view: ActiveCollectionComponent.fromJson(
          json['collection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActivePageComponentToJson(
        ActivePageComponent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'contextName': instance.contextName,
      'collection': instance.view,
    };
