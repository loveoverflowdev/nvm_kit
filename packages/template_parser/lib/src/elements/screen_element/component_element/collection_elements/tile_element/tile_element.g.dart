// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tile_element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TileElement _$TileElementFromJson(Map<String, dynamic> json) => TileElement(
      titleActiveFieldKey: json['titleActiveFieldKey'] as String,
      subtileActiveFieldKey: json['subtileActiveFieldKey'] as String?,
      child: ComponentElement.fromJson(json['child'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TileElementToJson(TileElement instance) =>
    <String, dynamic>{
      'titleActiveFieldKey': instance.titleActiveFieldKey,
      'subtileActiveFieldKey': instance.subtileActiveFieldKey,
      'child': instance.child,
    };
