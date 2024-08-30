import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceListView extends ConsumerStatefulWidget {
  final template.ActiveCollectionComponent collectionComponent;

  const ActiveResourceListView({
    super.key,
    required this.collectionComponent,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceListViewState();
}

class _ActiveResourceListViewState
    extends ConsumerState<ActiveResourceListView> {

  String get _activeStructureCode =>
      widget.collectionComponent.tile.activeStructureCode;
  
  template.ActiveTileComponent get _activeTile => widget.collectionComponent.tile;

  String _parseRequestField(template.ActiveTileComponent tile) {
    
    return RequestField.children(
      [
        RequestField.name('id'),
        RequestField(
          name: 'liveAttributes',
          children: [
          RequestField.name(tile.titleKey),
          if (tile.subtitleKey != null) RequestField.name(tile.subtitleKey!),
        ]),
      ]
    ).build();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(activeResourceListProvider(
          activeStructureCode: _activeStructureCode,
        ).notifier).loadActiveResourceList(
          requestField: _parseRequestField(_activeTile)
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(activeResourceListProvider(
      activeStructureCode: _activeStructureCode,
    ));
    final tileComponent = widget.collectionComponent.tile;
    return activeResourceList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final activeResource = data[index];
          final liveAttributes = activeResource.liveAttributes;
          print('--- ' + liveAttributes.toString());
          print('--- ' + tileComponent.toJson().toString());
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
