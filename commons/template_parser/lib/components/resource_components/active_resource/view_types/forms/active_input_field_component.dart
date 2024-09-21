import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_input_field_component.freezed.dart';

@freezed
class ActiveInputFieldComponent
    with _$ActiveInputFieldComponent
    implements Component {
  ActiveInputFieldComponent._();

  factory ActiveInputFieldComponent.primitive({
    required String fieldCode,
    dynamic initialValue,
  }) = _PrimitiveType;

  factory ActiveInputFieldComponent.activeResourcesSelection({
    required String fieldCode,
    required final String activeStructureCode,
    required final String titleKey,
    required final String subtitleKey,
  }) = _ActiveResourcesSelectionType;

  factory ActiveInputFieldComponent.usersSelection({
    required String fieldCode,
    final String? avatarKey,
    required final String titleKey,
    required final String subtitleKey,
  }) = _UsersSelectionType;

  @override
  Map<String, dynamic> toJson() {
    return when(
      primitive: (fieldCode, initialValue) => {
        'type': 'PRIMITIVE',
        'fieldCode': fieldCode,
        'initialValue': initialValue,
      },
      activeResourcesSelection: (
        fieldCode,
        activeStructureCode,
        titleKey,
        subtitleKey,
      ) =>
          {
        'type': 'RESOURCES_SELECTION',
        'fieldCode': fieldCode,
        'activeStructureCode': activeStructureCode,
        'titleKey': titleKey,
        'subtitleKey': subtitleKey,
      },
      usersSelection: (
        String fieldCode,
        String? avatarKey,
        String titleKey,
        String subtitleKey,
      ) =>
          {
        'type': 'USERS_SELECTION',
        'fieldCode': fieldCode,
        'titleKey': titleKey,
        'subtitleKey': subtitleKey,
      },
    );
  }

  factory ActiveInputFieldComponent.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;
    switch (type) {
      case 'PRIMITIVE':
        return ActiveInputFieldComponent.primitive(
          fieldCode: json['fieldCode'] as String,
          initialValue: json['initialValue'],
        );
      case 'RESOURCES_SELECTION':
        return ActiveInputFieldComponent.activeResourcesSelection(
          fieldCode: json['fieldCode'] as String,
          activeStructureCode: json['activeStructureCode'] as String,
          titleKey: json['titleKey'] as String,
          subtitleKey: json['subtitleKey'] as String,
        );
      case 'USERS_SELECTION':
        return ActiveInputFieldComponent.usersSelection(
          fieldCode: json['fieldCode'] as String,
          titleKey: json['titleKey'] as String,
          subtitleKey: json['subtitleKey'] as String,
        );
      default:
        throw Exception('Unknown type: $type');
    }
  }
}
