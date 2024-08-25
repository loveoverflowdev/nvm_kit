import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart' show IconData;

import '../../notification_response/utils.dart';

part 'status_icon_response.g.dart';

@JsonSerializable()
class StatusIconResponse with ColorResponseUtils, IconResponseUtils {
  @JsonKey(name: 'iconCode')
  final String iconDataCode;

  StatusIconResponse({
    required this.iconDataCode,
  });

  IconData get icon {
    return codeToIconData(iconDataCode);
  }

  factory StatusIconResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusIconResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StatusIconResponseToJson(this);
}
