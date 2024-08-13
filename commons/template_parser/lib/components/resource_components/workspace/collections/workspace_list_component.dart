import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../tiles.dart';

part 'workspace_list_component.g.dart';

@JsonSerializable()
class WorkspaceListComponent implements Component {
  final WorkspaceTileComponent tile;

  WorkspaceListComponent({
    required this.tile,
  });

  factory WorkspaceListComponent.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceListComponentFromJson(json);

  Map<String, dynamic> toJson() => _$WorkspaceListComponentToJson(this);
}
