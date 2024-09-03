import 'package:json_annotation/json_annotation.dart';
import '../../tiles.dart';
import '../active_view_component.dart';

part 'active_detail_component.g.dart';

@JsonSerializable()
class ActiveDetailComponent extends ActiveViewComponent {
  @override
  // ignore: overridden_fields
  late final String type = super.type;

  final ActiveTileComponent tile;

  ActiveDetailComponent({
    required this.tile,
  });

  @override
  factory ActiveDetailComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveDetailComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveDetailComponentToJson(this)
    ..addAll(
      {
        'type': type,
      },
    );
}
