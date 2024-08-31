import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_tile_component.g.dart';

@JsonSerializable()
class ActiveTileComponent implements Component {
  late final String activeStructureCode;
  late final String titleKey;
  late final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  ActiveTileComponent({
    required this.activeStructureCode,
    required this.titleKey,
    this.subtitleKey,
  });

  @override
  factory ActiveTileComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveTileComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveTileComponentToJson(this);
}
