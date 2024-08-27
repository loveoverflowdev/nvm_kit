import 'package:json_annotation/json_annotation.dart';
import '../../../resource_components.dart';

part 'notification_tile_component.g.dart';

@JsonSerializable()
class NotificationTileComponent extends ResourceComponent {
  @override
  late final String type;
  final String id;
  final String titleKey;
  final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  NotificationTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  }) {
    type = super.type;
  }

  @override
  factory NotificationTileComponent.fromJson(Map<String, dynamic> json) =>
      _$NotificationTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationTileComponentToJson(this);
}
