import 'package:json_annotation/json_annotation.dart';
import '../../tiles.dart';
import '../active_view_component.dart';

part 'active_detail_component.g.dart';

@JsonSerializable()
class ActiveDetailComponent extends ActiveViewComponent {
  @override
  // ignore: overridden_fields
  late final String type = super.type;

  final ActiveTileComponent primaryTile;
  final List<ActiveRefsTileComponent> refTileList;
  final String? updateFormContextName;

  ActiveDetailComponent({
    required this.primaryTile,
    required this.updateFormContextName,
    this.refTileList = const [],
  });

  @override
  factory ActiveDetailComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveDetailComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ActiveDetailComponentToJson(this)
    ..addAll(
      {
        'type': type,
      },
    );

  // static List<ActiveRefsTileComponent> _refTileListFromJson(
  //   List<dynamic> list,
  // ) {
  //   return list.map((e) => ActiveRefsTileComponent.fromJson(e)).toList();
  // }

  // static List<dynamic> _refTileListToJson(
  //   List<ActiveRefsTileComponent> refTileList,
  // ) {
  //   return refTileList.map((e) => e.toJson()).toList();
  // }
}
