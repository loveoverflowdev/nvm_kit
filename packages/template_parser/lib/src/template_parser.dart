import 'dart:convert';

import 'models/app_template.dart';

final class TemplateParser {
  static AppTemplate parseJsonString(String jsonString) {
    final Map<String, dynamic> jsonData = jsonDecode(jsonString);
    return AppTemplate.fromJson(jsonData);
  }

  static AppTemplate parse(Map<String, dynamic> json) {
    return AppTemplate.fromJson(json);
  }
}
