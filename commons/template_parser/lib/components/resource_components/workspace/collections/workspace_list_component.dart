import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:template_parser/core.dart';

import '../tiles.dart';

part 'workspace_list_component.g.dart';

@JsonSerializable()
@experimental
class WorkspaceListComponent implements Component {
  @override
  late final String type;
  final WorkspaceTileComponent tile;

  WorkspaceListComponent({
    required this.tile,
  });

  @override
  factory WorkspaceListComponent.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceListComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WorkspaceListComponentToJson(this);
}
