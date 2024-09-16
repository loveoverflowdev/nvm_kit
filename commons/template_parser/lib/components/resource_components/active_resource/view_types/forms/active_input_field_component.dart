import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_input_field_component.freezed.dart';

@freezed

/// Will add field type in the future
class ActiveInputFieldComponent
    with _$ActiveInputFieldComponent
    implements Component {
  ActiveInputFieldComponent._();

  factory ActiveInputFieldComponent.primitive({
    required String fieldCode,
    dynamic initialValue,
  }) = _PrimitiveType;

  factory ActiveInputFieldComponent.resourcesSelection({
    required String fieldCode,
    required final String activeStructureCode,
    required final String titleKey,
    required final String subtitleKey,
  }) = _ResourcesSelectionType;

  @override
  Map<String, dynamic> toJson() {
    return when(
      primitive: (fieldCode, initialValue) => {
        'type': 'PRIMITIVE',
        'initialValue': initialValue,
      },
      resourcesSelection: (
        fieldCode,
        activeStructureCode,
        titleKey,
        subtitleKey,
      ) =>
          {
        'type': 'RESOURCES_SELECTION',
        'activeStructureCode': activeStructureCode,
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
        return ActiveInputFieldComponent.resourcesSelection(
          fieldCode: json['fieldCode'] as String,
          activeStructureCode: json['activeStructureCode'] as String,
          titleKey: json['titleKey'] as String,
          subtitleKey: json['subtitleKey'] as String,
        );
      default:
        throw Exception('Unknown type: $type');
    }
  }
}
