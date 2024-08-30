import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:template_parser/core.dart';

part 'workspace_tile_component.g.dart';

@JsonSerializable()
@experimental
class WorkspaceTileComponent implements Component {
  final String id;
  final String titleKey;
  final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  WorkspaceTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  });

  @override
  factory WorkspaceTileComponent.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WorkspaceTileComponentToJson(this);
}
