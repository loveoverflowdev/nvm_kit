import 'package:json_annotation/json_annotation.dart';

import '../../../resource_components.dart';

part 'workspace_tile_component.g.dart';

@JsonSerializable()
class WorkspaceTileComponent extends ResourceComponent {
  @override
  late final String type;
  final String id;
  final String titleKey;
  final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  WorkspaceTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  }) {
    type = super.type;
  }

  @override
  factory WorkspaceTileComponent.fromJson(Map<String, dynamic> json) =>
      _$WorkspaceTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WorkspaceTileComponentToJson(this);
}
