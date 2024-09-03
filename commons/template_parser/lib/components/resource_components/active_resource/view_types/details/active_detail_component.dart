import 'package:json_annotation/json_annotation.dart';
import '../../tiles.dart';
import '../view_component.dart';

part 'active_detail_component.g.dart';

@JsonSerializable()
class ActiveDetailComponent extends ViewComponent {
  final ActiveTileComponent tile;

  ActiveDetailComponent({
    required this.tile,
  });

  @override
  factory ActiveDetailComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveDetailComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveDetailComponentToJson(this);
}
