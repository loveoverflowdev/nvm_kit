import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../tiles.dart';

part 'project_list_component.g.dart';

@JsonSerializable()
class ProjectListComponent implements Component {
  final ProjectTileComponent tile;

  ProjectListComponent({
    required this.tile,
  });
  factory ProjectListComponent.fromJson(Map<String, dynamic> json) =>
      _$ProjectListComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectListComponentToJson(this);
}
