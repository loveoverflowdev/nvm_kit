import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_refs_tile_component.g.dart';

@JsonSerializable()
class ActiveRefsTileComponent implements Component {
  late final String fieldTitle;
  late final String fieldCode;
  late final String activeStructureCode;
  late final String titleKey;
  late final String? subtitleKey;

  ActiveRefsTileComponent({
    required this.fieldTitle,
    required this.fieldCode,
    required this.activeStructureCode,
    required this.titleKey,
    required this.subtitleKey,
  });

  @override
  factory ActiveRefsTileComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveRefsTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ActiveRefsTileComponentToJson(this);
}
