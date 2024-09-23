// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_create_form_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveCreateFormComponent _$ActiveCreateFormComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveCreateFormComponent(
      activeStructureCode: json['activeStructureCode'] as String,
      inputFields: ActiveCreateFormComponent._inputFieldsFromJson(
          json['inputFields'] as Map<String, dynamic>),
      listViewContextName: json['listViewContextName'] as String?,
    );

Map<String, dynamic> _$ActiveCreateFormComponentToJson(
        ActiveCreateFormComponent instance) =>
    <String, dynamic>{
      'listViewContextName': instance.listViewContextName,
      'activeStructureCode': instance.activeStructureCode,
      'inputFields':
          ActiveCreateFormComponent._inputFieldsToJson(instance.inputFields),
    };
