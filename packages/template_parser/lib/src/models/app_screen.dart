import 'render_item.dart';

class AppScreen {
  final String? screenType;
  final String? theme;
  final bool? requiredAuth;
  final List<RenderItem>? renders;

  AppScreen({
    this.screenType,
    this.theme,
    this.requiredAuth,
    this.renders,
  });

  factory AppScreen.fromJson(Map<String, dynamic> json) {
    var renderList = json['render'] as List<dynamic>;
    List<RenderItem> renderItems =
        renderList.map((item) => RenderItem.fromJson(item)).toList();

    return AppScreen(
      screenType: json['screenType'],
      theme: json['theme'],
      requiredAuth: json['requiredAuth'],
      renders: renderItems,
    );
  }
}
