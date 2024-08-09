import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/src/elements/elements.dart';

part 'template_element.g.dart';

@JsonSerializable()
final class TemplateElement {
  final List<AppElement> apps;

  TemplateElement({
    required this.apps,
  });

  factory TemplateElement.fromJson(Map<String, dynamic> json) =>
      _$TemplateElementFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateElementToJson(this);
}
