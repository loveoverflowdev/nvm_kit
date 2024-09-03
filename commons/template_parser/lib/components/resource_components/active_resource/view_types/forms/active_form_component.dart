import 'package:json_annotation/json_annotation.dart';

import '../active_view_component.dart';

part 'active_form_component.g.dart';

@JsonSerializable()
class ActiveFormComponent extends ActiveViewComponent {
  @override
  // ignore: overridden_fields
  late final String type = super.type;

  ActiveFormComponent();

  @override
  factory ActiveFormComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveFormComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveFormComponentToJson(this)
    ..addAll(
      {
        'type': type,
      },
    );
}
