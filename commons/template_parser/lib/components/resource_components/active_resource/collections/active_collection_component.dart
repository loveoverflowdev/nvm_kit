import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../tiles.dart';

part 'active_collection_component.g.dart';

@JsonSerializable()
class ActiveCollectionComponent implements Component {
  final ActiveResourceTileComponent tile;

  ActiveCollectionComponent({
    required this.tile,
  });

  @override
  factory ActiveCollectionComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveCollectionComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveCollectionComponentToJson(this);
}
