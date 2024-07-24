import 'package:flutter/cupertino.dart';
import 'package:nvm_ui_component/nvm_ui_component.dart';

import 'collection_components.dart';

class ListViewComponent extends StatelessWidget {
  const ListViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return UiListView(
      itemCount: 0,
      itemBuilder: (context, index) {
        return UiListTile(
          title: 'title',
        );
        // return TileComponent();
      },
    );
  }
}
