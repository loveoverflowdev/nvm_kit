// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_detail_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveDetailComponent _$ActiveDetailComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveDetailComponent(
      activeStructureCode: json['activeStructureCode'] as String,
      titleKey: json['titleKey'] as String,
      extraKeys:
          (json['extraKeys'] as List<dynamic>).map((e) => e as String).toList(),
      subtitleKey: json['subtitleKey'] as String?,
    );

Map<String, dynamic> _$ActiveDetailComponentToJson(
        ActiveDetailComponent instance) =>
    <String, dynamic>{
      'activeStructureCode': instance.activeStructureCode,
      'titleKey': instance.titleKey,
      'subtitleKey': instance.subtitleKey,
      'extraKeys': instance.extraKeys,
    };
