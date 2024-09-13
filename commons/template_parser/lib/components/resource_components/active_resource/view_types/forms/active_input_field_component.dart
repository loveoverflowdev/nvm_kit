import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_input_field_component.freezed.dart';

@freezed
class ActiveInputFieldComponent with _$ActiveInputFieldComponent implements Component  {
  ActiveInputFieldComponent._();

  factory ActiveInputFieldComponent.primitive([
    dynamic initialValue,
  ]) = _PrimitiveType;

  factory ActiveInputFieldComponent.resourcesSelection({
    required final String activeStructureCode,
    required final String titleKey,
    required final String subtitleKey,
  }) = _ResourcesSelectionType;

  Map<String, dynamic> toJson() {
    return this.when(
      primitive: (initialValue) => {
        'type': 'PRIMITIVE',
        'initialValue': initialValue,
      },
      resourcesSelection: (activeStructureCode, titleKey, subtitleKey) => {
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
          json['initialValue'],
        );
      case 'RESOURCES_SELECTION':
        return ActiveInputFieldComponent.resourcesSelection(
          activeStructureCode: json['activeStructureCode'] as String,
          titleKey: json['titleKey'] as String,
          subtitleKey: json['subtitleKey'] as String,
        );
      default:
        throw Exception('Unknown type: $type');
    }
  }
}
