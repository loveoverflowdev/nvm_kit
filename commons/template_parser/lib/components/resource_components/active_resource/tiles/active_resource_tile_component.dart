import 'package:json_annotation/json_annotation.dart';
import '../../base.dart';

part 'active_resource_tile_component.g.dart';

@JsonSerializable()
class ActiveResourceTileComponent extends ResourceComponent {
  @override
  late final String type;
  late final String id;
  late final String titleKey;
  late final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  ActiveResourceTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  }) {
    type = super.type;
  }

  @override
  factory ActiveResourceTileComponent.fromJson(Map<String, dynamic> json) => _$ActiveResourceTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ActiveResourceTileComponentToJson(this);
}
