import 'app_screen.dart';

class AppTemplate {
  final String appCode;
  final String index;
  final Map<String, AppScreen> screens;

  AppTemplate({
    required this.appCode,
    required this.index,
    required this.screens,
  });

  factory AppTemplate.fromJson(Map<String, dynamic> json) {
    var screenMap = json['screens'] as Map<String, dynamic>;
    Map<String, AppScreen> screens =
        screenMap.map((key, value) => MapEntry(key, AppScreen.fromJson(value)));

    return AppTemplate(
      appCode: json['appCode'],
      index: json['index'],
      screens: screens,
    );
  }
}
