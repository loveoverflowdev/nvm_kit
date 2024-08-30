import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';
import '../../../resource_components.dart';

part 'notification_list_component.g.dart';

@JsonSerializable()
class NotificationListComponent implements Component {
  final NotificationTileComponent tile;

  NotificationListComponent({
    required this.tile,
  });

  @override
  factory NotificationListComponent.fromJson(Map<String, dynamic> json) =>
      _$NotificationListComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationListComponentToJson(this);
}
