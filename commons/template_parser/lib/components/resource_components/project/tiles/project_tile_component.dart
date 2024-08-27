import 'package:json_annotation/json_annotation.dart';

import '../../../resource_components.dart';

part 'project_tile_component.g.dart';

@JsonSerializable()
class ProjectTileComponent extends ResourceComponent {
  @override
  late final String type;
  final String id;
  final String titleKey;
  final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  ProjectTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  }) {
    type = super.type;
  }

  @override
  factory ProjectTileComponent.fromJson(Map<String, dynamic> json) =>
      _$ProjectTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProjectTileComponentToJson(this);
}
