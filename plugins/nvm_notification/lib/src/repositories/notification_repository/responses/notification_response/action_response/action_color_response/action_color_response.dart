import 'package:json_annotation/json_annotation.dart';
import 'dart:ui';

import '../../utils.dart';

part 'action_color_response.g.dart';

@JsonSerializable()
class ActionColorResponse with ColorResponseUtils {
  final String colorCode;
  final String colorHexCode;

  Color get color {
    return hexCodeToColor(colorHexCode);
  }

  ActionColorResponse({
    required this.colorCode,
    required this.colorHexCode,
  });

  factory ActionColorResponse.fromJson(Map<String, dynamic> json) =>
      _$ActionColorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ActionColorResponseToJson(this);
}
