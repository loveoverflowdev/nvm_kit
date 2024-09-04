import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceCollectionView extends ConsumerStatefulWidget {
  final void Function(String? detailContextName)? onViewDetail;
  final template.ActiveCollectionComponent collectionComponent;

  const ActiveResourceCollectionView({
    super.key,
    required this.collectionComponent,
    required this.onViewDetail,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceCollectionViewState();
}

class _ActiveResourceCollectionViewState
    extends ConsumerState<ActiveResourceCollectionView> {
  String get _activeStructureCode =>
      widget.collectionComponent.tile.activeStructureCode;

  template.ActiveTileComponent get _activeTile =>
      widget.collectionComponent.tile;
  
  String? get detailContextName => widget.collectionComponent.detailContextName;


  String _parseRequestField(template.ActiveTileComponent tile) {
    return RequestField.children([
      RequestField.name('id'),
      RequestField(name: 'liveAttributes', children: [
        RequestField.name(tile.titleKey),
        if (tile.subtitleKey != null) RequestField.name(tile.subtitleKey!),
      ]),
    ]).build();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(activeResourceListProvider(
            activeStructureCode: _activeStructureCode,
          ).notifier)
          .loadActiveResourceList(
              requestField: _parseRequestField(_activeTile));
    });
  }

  // void _routeToDetail(
  //   BuildContext context, {
  //   required String activeStructureCode,
  //   required String resourceId,
  // }) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => Scaffold(
  //         appBar: AppBar(
  //           title: Text('Active Resource Detail'),
  //         ),
  //         body: ActiveResourceDetailView(
  //           activeStructureCode: activeStructureCode,
  //           resourceId: resourceId,
  //         ),
  //       ),
  //     ),
  //   );
  // }

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
          return ListTile(
            onTap: () {
              widget.onViewDetail?.call(detailContextName);
            },
            // onTap: () => _routeToDetail(
            //   context,
            //   activeStructureCode: _activeStructureCode,
            //   resourceId: activeResource.id,
            // ),
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
