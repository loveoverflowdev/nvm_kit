import 'package:json_annotation/json_annotation.dart';

import 'status_color_response/status_color_response.dart';
import 'status_icon_response/status_icon_response.dart';

export 'status_color_response/status_color_response.dart';
export 'status_icon_response/status_icon_response.dart';

part 'status_response.g.dart';

@JsonSerializable()
class StatusResponse {
  final String statusName;
  final String statusCode;
  final StatusIconResponse statusIcon;
  final StatusColorResponse statusColor;

  StatusResponse({
    required this.statusName,
    required this.statusCode,
    required this.statusIcon,
    required this.statusColor,
  });

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatusResponseToJson(this);
}
