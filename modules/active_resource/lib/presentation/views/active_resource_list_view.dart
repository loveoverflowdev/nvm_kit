import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceListView extends ConsumerStatefulWidget {
  final template.ActiveCollectionComponent listComponent;
  final String activeStructureCode;

  const ActiveResourceListView({
    super.key,
    required this.activeStructureCode,
    required this.listComponent,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceListViewState();
}

class _ActiveResourceListViewState
    extends ConsumerState<ActiveResourceListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(activeResourceListProvider(
      activeStructureCode: widget.activeStructureCode,
    ));
    final tileComponent = widget.listComponent.tile;
    return activeResourceList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final activeResource = data[index];
          final liveAttributes = activeResource.liveAttributes;
          return ListTile(
            title: Text(
              liveAttributes[tileComponent.titleKey],
            ),
            subtitle: Text(
              liveAttributes[tileComponent.subtitleKey],
            ),
          );
        },
      ),
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
