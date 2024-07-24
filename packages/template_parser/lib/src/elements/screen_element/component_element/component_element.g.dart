// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComponentElement _$ComponentElementFromJson(Map<String, dynamic> json) =>
    ComponentElement(
      componentCode: json['componentCode'] as String,
      componentType: json['componentType'] as String,
      attributes: json['attributes'] as Map<String, dynamic>,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => ComponentElement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ComponentElementToJson(ComponentElement instance) =>
    <String, dynamic>{
      'componentCode': instance.componentCode,
      'componentType': instance.componentType,
      'attributes': instance.attributes,
      'children': instance.children,
    };
