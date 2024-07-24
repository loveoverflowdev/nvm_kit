import 'package:json_annotation/json_annotation.dart';

import '../screen_element/screen_element.dart';

part 'app_element.g.dart';

@JsonSerializable()
final class AppElement {
  final String appCode;
  final String index;
  final List<ScreenElement> screens;

  AppElement({
    required this.appCode,
    required this.index,
    required this.screens,
  });

  factory AppElement.fromJson(Map<String, dynamic> json) =>
      _$AppElementFromJson(json);

  Map<String, dynamic> toJson() => _$AppElementToJson(this);
}

/*
"appCode": "HERA",
  "index": "ProjectHomeScreen",
  "screens"
*/