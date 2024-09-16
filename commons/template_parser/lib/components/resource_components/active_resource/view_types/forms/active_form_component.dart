import 'package:json_annotation/json_annotation.dart';

import '../active_view_component.dart';
import 'active_input_field_component.dart';

part 'active_form_component.g.dart';

@JsonSerializable()
class ActiveFormComponent extends ActiveViewComponent {
  @override
  // ignore: overridden_fields
  late final String type = super.type;

  final String activeStructureCode;

  @JsonKey(fromJson: _inputFieldsFromJson, toJson: _inputFieldsToJson)
  final List<ActiveInputFieldComponent> inputFields;

  ActiveFormComponent({
    required this.activeStructureCode,
    required this.inputFields,
  });

  @override
  factory ActiveFormComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveFormComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ActiveFormComponentToJson(this)
    ..addAll(
      {
        'type': type,
      },
    );

  static Map<String, dynamic> _inputFieldsToJson(
          final List<ActiveInputFieldComponent> inputFields) =>
      {
        'inputFields': inputFields.map((component) => component.toJson()),
      };

  static List<ActiveInputFieldComponent> _inputFieldsFromJson(
      Map<String, dynamic> json) {
    return (json['inputFields'] as List)
        .map((e) => ActiveInputFieldComponent.fromJson(e))
        .toList();
  }
}
