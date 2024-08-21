// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import '../status_response/status_response.dart';

part 'status_script_response.g.dart';

@JsonSerializable()
class StatusScriptResponse {
  final int requestStatus;

  final StatusResponse notificationStatus;

  StatusScriptResponse({
    required this.requestStatus,
    required this.notificationStatus,
  });

  factory StatusScriptResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusScriptResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatusScriptResponseToJson(this);
}
