import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceListView extends ConsumerStatefulWidget {
  final template.ActiveResourceTileComponent tileComponent;
  final String resourceCode;

  const ActiveResourceListView({
    super.key,
    required this.resourceCode,
    required this.tileComponent,
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(
            activeResourceListProvider.notifier,
          )
          .loadActiveResourceList(
            resourceCode: widget.resourceCode,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(activeResourceListProvider);
    return activeResourceList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final activeResource = data[index];
          final attributes = activeResource.attributes;

          return ListTile(
            title: Text(
              attributes[widget.tileComponent.titleKey],
            ),
            subtitle: Text(
              attributes[widget.tileComponent.subtitleKey],
            ),
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
