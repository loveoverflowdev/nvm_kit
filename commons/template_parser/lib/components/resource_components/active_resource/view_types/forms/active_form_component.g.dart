// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_form_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveFormComponent _$ActiveFormComponentFromJson(Map<String, dynamic> json) =>
    ActiveFormComponent(
      activeStructureCode: json['activeStructureCode'] as String,
      inputFields: ActiveFormComponent._inputFieldsFromJson(
          json['inputFields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveFormComponentToJson(
        ActiveFormComponent instance) =>
    <String, dynamic>{
      'activeStructureCode': instance.activeStructureCode,
      'inputFields':
          ActiveFormComponent._inputFieldsToJson(instance.inputFields),
    };
