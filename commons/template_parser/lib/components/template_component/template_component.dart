import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';
import '../app_component.dart';

part 'template_component.g.dart';

@JsonSerializable()
final class TemplateComponent implements Component {
  final String title;
  final List<AppComponent> apps;

  TemplateComponent({
    required this.title,
    required this.apps,
  });

  factory TemplateComponent.fromJson(Map<String, dynamic> json) =>
      _$TemplateComponentFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateComponentToJson(this);
}
