// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageComponent _$PageComponentFromJson(Map<String, dynamic> json) =>
    PageComponent(
      title: json['title'] as String,
      contextName: json['contextName'] as String,
      screenType: json['screenType'] as String,
      pageActions: (json['pageActions'] as List<dynamic>)
          .map((e) => ActionComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageResources: (json['pageResources'] as List<dynamic>)
          .map((e) => ResourceComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PageComponentToJson(PageComponent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'contextName': instance.contextName,
      'screenType': instance.screenType,
      'pageActions': instance.pageActions,
      'pageResources': instance.pageResources,
    };
