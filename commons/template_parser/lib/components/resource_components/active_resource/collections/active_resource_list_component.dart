import 'package:json_annotation/json_annotation.dart';

import '../../base.dart';
import '../tiles.dart';

part 'active_resource_list_component.g.dart';

@JsonSerializable()
class ActiveResourceListComponent extends ResourceComponent {
  @override
  late final String type;
  final ActiveResourceTileComponent tile;

  ActiveResourceListComponent({
    required this.tile,
  }) {
    type = super.type;
  }

  @override
  factory ActiveResourceListComponent.fromJson(Map<String, dynamic> json) => _$ActiveResourceListComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ActiveResourceListComponentToJson(this);
}
