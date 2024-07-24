import 'package:flutter/cupertino.dart';
import 'package:nvm_ui_component/nvm_ui_component.dart';

class TileComponent extends StatelessWidget {
  const TileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return UiListTile(
      title: 'title',
      subtitle: 'subtitle',
      onTap: () {},
      bottom: null,
    );
  }
}
