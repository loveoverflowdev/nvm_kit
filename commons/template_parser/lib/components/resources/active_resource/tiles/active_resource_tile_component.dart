import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_resource_tile_component.g.dart';

@JsonSerializable()
class ActiveResourceTileComponent implements Component {
  final String id;
  final String titleKey;
  final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  ActiveResourceTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  });

  factory ActiveResourceTileComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveResourceTileComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveResourceTileComponentToJson(this);
}
