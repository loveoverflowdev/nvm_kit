import 'package:json_annotation/json_annotation.dart';

part 'action_payload.g.dart';

@JsonSerializable()
class ActionPayload {
  final String actionName;
  final String actionType;
  final String url;
  final String actionColor;
  final String actionStatus;

  ActionPayload({
    required this.actionName,
    required this.actionType,
    required this.url,
    required this.actionColor,
    required this.actionStatus,
  });

  Map<String, dynamic> toJson() => _$ActionPayloadToJson(this);
}
