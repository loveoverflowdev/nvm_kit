// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageComponent _$PageComponentFromJson(Map<String, dynamic> json) =>
    PageComponent(
      title: json['title'] as String,
      contextName: json['contextName'] as String,
      requiredAuth: json['requiredAuth'] as bool,
      screenType: json['screenType'] as String,
      pageStates: (json['pageStates'] as List<dynamic>)
          .map((e) => StateComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageActions: (json['pageActions'] as List<dynamic>)
          .map((e) => ActionComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageComponents: (json['pageComponents'] as List<dynamic>)
          .map((e) => PageComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PageComponentToJson(PageComponent instance) =>
    <String, dynamic>{
      'title': instance.title,
      'contextName': instance.contextName,
      'requiredAuth': instance.requiredAuth,
      'screenType': instance.screenType,
      'pageStates': instance.pageStates,
      'pageActions': instance.pageActions,
      'pageComponents': instance.pageComponents,
    };
