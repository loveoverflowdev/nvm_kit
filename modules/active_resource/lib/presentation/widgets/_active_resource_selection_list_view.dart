import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceSelectionListView extends ConsumerStatefulWidget {
  const ActiveResourceSelectionListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Live_ResourceSelectionListViewState();
}

class _Live_ResourceSelectionListViewState extends ConsumerState<ActiveResourceSelectionListView> {

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
            projectId: widget.projectId,
            requestField: _parseRequestField(_activeTile),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(activeResourceListProvider(
      activeStructureCode: _activeStructureCode,
    ));
    final tileComponent = widget.collectionComponent.tile;
    return Stack(
      children: [
        activeResourceList.when(
          data: (data) => Visibility(
            visible: data.isNotEmpty,
            replacement: const AppEmptyWidget(),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final activeResource = data[index];
                final liveAttributes = activeResource.liveAttributes;
                return ListTile(
                  onTap: () {
                    widget.onTapResource?.call(activeResource.id);
                    widget.onViewDetail
                        ?.call(_detailContextName, activeResource.id);
                  },
                  title: Text(
                    liveAttributes[tileComponent.titleKey] ?? '',
                  ),
                  subtitle: Text(
                    liveAttributes[tileComponent.subtitleKey] ?? '',
                  ),
                );
              },
            ),
          ),
          error: (error, stackTrace) => AppErrorWidget(
            error,
            stackTrace: stackTrace,
          ),
          loading: () => const AppCircularLoadingWidget(),
        ),

        //
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: AppSpacing.lg,
              right: AppSpacing.lg,
            ),
            child: FloatingActionButton(
              heroTag:
                  'active_resource_collection@${_activeTile.hashCode}${widget.projectId}',
              child: const Icon(Icons.add),
              onPressed: () {
                widget.onRouteCreateForm?.call(_createFormContextName);
              },
            ),
          ),
        ),
      ],
    );
  }
}
