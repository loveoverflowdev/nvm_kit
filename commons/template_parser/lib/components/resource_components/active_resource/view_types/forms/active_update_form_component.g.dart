// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_update_form_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveUpdateFormComponent _$ActiveUpdateFormComponentFromJson(
        Map<String, dynamic> json) =>
    ActiveUpdateFormComponent(
      activeStructureCode: json['activeStructureCode'] as String,
      inputFields: ActiveUpdateFormComponent._inputFieldsFromJson(
          json['inputFields'] as Map<String, dynamic>),
      listViewContextName: json['listViewContextName'] as String?,
    );

Map<String, dynamic> _$ActiveUpdateFormComponentToJson(
        ActiveUpdateFormComponent instance) =>
    <String, dynamic>{
      'listViewContextName': instance.listViewContextName,
      'activeStructureCode': instance.activeStructureCode,
      'inputFields':
          ActiveUpdateFormComponent._inputFieldsToJson(instance.inputFields),
    };
