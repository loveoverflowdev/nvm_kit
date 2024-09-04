import 'package:json_annotation/json_annotation.dart';

import '../../tiles.dart';
import '../active_view_component.dart';

part 'active_collection_component.g.dart';

@JsonSerializable()
class ActiveCollectionComponent extends ActiveViewComponent {
  @override
  // ignore: overridden_fields
  late final String type = super.type;

  final ActiveTileComponent tile;
  final String? detailContextName;

  ActiveCollectionComponent({
    required this.tile,
    required this.detailContextName,
  });

  @override
  factory ActiveCollectionComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveCollectionComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveCollectionComponentToJson(this)
    ..addAll(
      {
        'type': type,
      },
    );
}
