// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'action_response/action_response.dart';

export 'action_response/action_response.dart';
export 'status_response/status_response.dart';
export 'status_script_response/status_script_response.dart';

part 'notification_response.g.dart';

@JsonSerializable()
class NotificationResponse {
  @JsonKey(fromJson: _idFromJson, toJson: _idToJson)
  final String id;

  final String notificationTitle;
  final String notificationContent;

  @JsonKey(name: 'actions')
  final List<ActionResponse> actionList;

  NotificationResponse({
    required this.id,
    required this.notificationTitle,
    required this.notificationContent,
    required this.actionList,
  });

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);

  /// Connect the generated [_$NotificationResponseToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NotificationResponseToJson(this);

  // TODO: remove it in the future
  static String _idFromJson(dynamic bigInt) => bigInt.toString();
  static BigInt _idToJson(String bigInt) => BigInt.parse(bigInt);
}
