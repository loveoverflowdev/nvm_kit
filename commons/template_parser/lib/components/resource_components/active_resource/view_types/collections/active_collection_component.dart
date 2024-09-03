import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../../tiles.dart';
import '../view_component.dart';

part 'active_collection_component.g.dart';

@JsonSerializable()
class ActiveCollectionComponent extends ViewComponent {
  final ActiveTileComponent tile;

  ActiveCollectionComponent({
    required this.tile,
  });

  @override
  factory ActiveCollectionComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveCollectionComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveCollectionComponentToJson(this);
}
