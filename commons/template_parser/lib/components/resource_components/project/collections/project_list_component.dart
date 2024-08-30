import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:template_parser/core.dart';

import '../tiles.dart';

part 'project_list_component.g.dart';

@JsonSerializable()
@experimental
class ProjectListComponent implements Component {
  @override
  late final String type;
  final ProjectTileComponent tile;

  ProjectListComponent({
    required this.tile,
  });

  @override
  factory ProjectListComponent.fromJson(Map<String, dynamic> json) =>
      _$ProjectListComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProjectListComponentToJson(this);
}
