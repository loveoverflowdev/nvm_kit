import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../tiles.dart';

part 'active_resource_list_component.g.dart';

@JsonSerializable()
class ActiveResourceListComponent implements Component {
  final ActiveResourceTileComponent tile;

  ActiveResourceListComponent({
    required this.tile,
  });
  factory ActiveResourceListComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveResourceListComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveResourceListComponentToJson(this);
}
