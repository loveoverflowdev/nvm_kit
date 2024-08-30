import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'notification_tile_component.g.dart';

@JsonSerializable()
class NotificationTileComponent implements Component {
  final String id;
  final String titleKey;
  final String? subtitleKey;
  // TODO: urgent: GenericTagListComponent

  NotificationTileComponent({
    required this.id,
    required this.titleKey,
    this.subtitleKey,
  });

  @override
  factory NotificationTileComponent.fromJson(Map<String, dynamic> json) =>
      _$NotificationTileComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationTileComponentToJson(this);
}
