import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

import '../page_component.dart';

part 'app_component.g.dart';

@JsonSerializable()
final class AppComponent implements Component {
  final String appCode;
  final String title;
  final List<PageComponent> pages;

  AppComponent({
    required this.appCode,
    required this.pages,
    required this.title,
  });

  factory AppComponent.fromJson(Map<String, dynamic> json) =>
      _$AppComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AppComponentToJson(this);
}

/*
"appCode": "HERA",
  "index": "ProjectHomeScreen",
  "screens"
*/
