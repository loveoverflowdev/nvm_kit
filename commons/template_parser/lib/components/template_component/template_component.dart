import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';
import '../app_component.dart';

part 'template_component.g.dart';

@JsonSerializable()
final class TemplateComponent implements Component {
  final String title;
  final AppComponent app;

  TemplateComponent({
    required this.title,
    required this.app,
  });

  factory TemplateComponent.fromJson(Map<String, dynamic> json) =>
      _$TemplateComponentFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateComponentToJson(this);
}
