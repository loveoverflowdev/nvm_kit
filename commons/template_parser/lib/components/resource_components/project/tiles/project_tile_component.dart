import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:template_parser/core.dart';

part 'project_tile_component.g.dart';

@JsonSerializable()
@experimental
class ProjectTileComponent implements Component {
  ProjectTileComponent();

  @override
  factory ProjectTileComponent.fromJson(Map<String, dynamic> json) =>
      _$ProjectTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProjectTileComponentToJson(this);
}
