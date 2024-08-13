import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'project_tile_component.g.dart';

@JsonSerializable()
class ProjectTileComponent implements Component {
  final String id;
  final String titleKey;
  final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  ProjectTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  });

  factory ProjectTileComponent.fromJson(Map<String, dynamic> json) =>
      _$ProjectTileComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectTileComponentToJson(this);
}
