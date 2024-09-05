import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:app_ui/app_ui.dart';
import 'package:comment_addon/comment_addon.dart' as comment;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceProvider;

class ActiveResourceDetailView extends ConsumerStatefulWidget {
  final template.ActiveDetailComponent detailComponent;
  final String resourceId;

  const ActiveResourceDetailView({
    super.key,
    required this.detailComponent,
    required this.resourceId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceDetailViewState();
}

class _ActiveResourceDetailViewState
    extends ConsumerState<ActiveResourceDetailView> {
  String get _activeStructureCode =>
      widget.detailComponent.tile.activeStructureCode;

  template.ActiveTileComponent get _activeTile => widget.detailComponent.tile;

  String _parseRequestField(template.ActiveTileComponent tile) {
    return RequestField.children([
      RequestField.name('id'),
      RequestField(name: 'liveAttributes', children: [
        RequestField.name(tile.titleKey),
        if (tile.subtitleKey != null) RequestField.name(tile.subtitleKey!),
      ]),
      for (final key in tile.extraKeys) RequestField.name(key),
    ]).build();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final String requestField = _parseRequestField(_activeTile);
      print('_ActiveResourceDetailViewState.requestField: $requestField');
      ref
          .read(activeResourceProvider(
            activeStructureCode: _activeStructureCode,
          ).notifier)
          .loadActiveResource(
            requestField: requestField,
            id: widget.resourceId,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeResource = ref.watch(
      activeResourceProvider(
        activeStructureCode: _activeStructureCode,
      ),
    );
    return activeResource.when(
      data: (data) => data == null
          ? const SizedBox.shrink()
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.lg),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // TODO: call fieldTitle here
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            data.liveAttributes[_activeTile.titleKey],
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        if (data.liveAttributes[_activeTile.subtitleKey] !=
                            null)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                                data.liveAttributes[_activeTile.subtitleKey]),
                          ),
                        const Divider(),
                        for (final key in _activeTile.extraKeys)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(data.liveAttributes[key]),
                          ),
                      ],
                    ),
                    Flexible(
                      child: comment.CommentsPreview(
                        activeStructureCode:
                            widget.detailComponent.tile.activeStructureCode,
                        resourceId: widget.resourceId,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
