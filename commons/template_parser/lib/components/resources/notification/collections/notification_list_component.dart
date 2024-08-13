import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../tiles.dart';

part 'notification_list_component.g.dart';

@JsonSerializable()
class NotificationListComponent implements Component {
  final NotificationTileComponent tile;

  NotificationListComponent({
    required this.tile,
  });
  factory NotificationListComponent.fromJson(Map<String, dynamic> json) =>
      _$NotificationListComponentFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationListComponentToJson(this);
}
