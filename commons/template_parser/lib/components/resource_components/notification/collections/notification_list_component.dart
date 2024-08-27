import 'package:json_annotation/json_annotation.dart';
import '../../../resource_components.dart';


part 'notification_list_component.g.dart';

@JsonSerializable()
class NotificationListComponent extends ResourceComponent {
  @override
  late final String type;
  final NotificationTileComponent tile;

  NotificationListComponent({
    required this.tile,
  }) {
    type = super.type;
  }

  @override
  factory NotificationListComponent.fromJson(Map<String, dynamic> json) =>
      _$NotificationListComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationListComponentToJson(this);
}
