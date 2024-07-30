import 'package:json_annotation/json_annotation.dart';
import 'dart:ui';

import '../../utils.dart';

part 'status_color_response.g.dart';

@JsonSerializable()
class StatusColorResponse with ColorResponseUtils {
  final String colorHexCode;

  StatusColorResponse({
    required this.colorHexCode,
  });

  Color get color {
    return hexCodeToColor(colorHexCode);
  }

  factory StatusColorResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusColorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatusColorResponseToJson(this);
}
