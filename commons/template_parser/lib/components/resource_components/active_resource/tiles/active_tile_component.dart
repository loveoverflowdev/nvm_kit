import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_tile_component.g.dart';

@JsonSerializable()
class ActiveResourceTileComponent implements Component {
  late final String activeStructureCode;
  late final String titleKey;
  late final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  ActiveResourceTileComponent({
    required this.activeStructureCode,
    required this.titleKey,
    this.subtitleKey,
  });

  @override
  factory ActiveResourceTileComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveResourceTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ActiveResourceTileComponentToJson(this);
}
