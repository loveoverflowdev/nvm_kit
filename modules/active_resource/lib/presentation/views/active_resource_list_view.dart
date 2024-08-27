import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceListView extends ConsumerStatefulWidget {
  final template.ActiveResourceTileComponent tileComponent;
  final String activeStructureCode;

  const ActiveResourceListView({
    super.key,
    required this.activeStructureCode,
    required this.tileComponent,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceListViewState();
}

class _ActiveResourceListViewState
    extends ConsumerState<ActiveResourceListView> {
  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(activeResourceListProvider(
      activeStructureCode: widget.activeStructureCode,
    ));
    return activeResourceList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final activeResource = data[index];
          final liveAttributes = activeResource.liveAttributes;
          print('----------');
          print(liveAttributes.toString());
          print(widget.tileComponent.toJson());
          print('----------');
          return ListTile(
            title: Text(
              liveAttributes[widget.tileComponent.titleKey],
            ),
            // subtitle: Text(
            //   liveAttributes[widget.tileComponent.subtitleKey],
            // ),
          );
        },
      ),
      error: (error, stackTrace) => Text(
        'error: $error\nstackTrace: $stackTrace',
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
