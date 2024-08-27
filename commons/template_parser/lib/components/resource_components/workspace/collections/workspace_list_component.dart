import 'package:json_annotation/json_annotation.dart';
import '../../../resource_components.dart';

part 'workspace_list_component.g.dart';

@JsonSerializable()
class WorkspaceListComponent extends ResourceComponent {
  @override
  late final String type;
  final WorkspaceTileComponent tile;

  WorkspaceListComponent({
    required this.tile,
  }) {
    type = super.type;
  }

  @override
  factory WorkspaceListComponent.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceListComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WorkspaceListComponentToJson(this);
}
