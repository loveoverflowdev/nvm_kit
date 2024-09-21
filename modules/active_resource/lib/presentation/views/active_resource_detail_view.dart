import 'package:active_resource/domain.dart';
import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart'
    show
        ActiveResourceByStructureCodeProvider,
        activeResourceByStructureCodeProvider;

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
      widget.detailComponent.primaryTile.activeStructureCode;

  template.ActiveTileComponent get _primaryActiveTile =>
      widget.detailComponent.primaryTile;

  List<template.ActiveRefsTileComponent> get _refTileList =>
      widget.detailComponent.refTileList;

  String _parseRequestField(template.ActiveTileComponent tile) {
    return RequestField.children([
      RequestField.name('liveFeatures'),
      RequestField.name('id'),
      RequestField(name: 'liveAttributes', children: [
        RequestField.name(tile.titleKey),
        if (tile.subtitleKey != null) RequestField.name(tile.subtitleKey!),

        ///
        for (final refTile in _refTileList)
          RequestField.name(refTile.fieldCode),
      ]),
      for (final key in tile.extraKeys) RequestField.name(key),
    ]).build();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final String requestField = _parseRequestField(_primaryActiveTile);
      ref
          .read(activeResourceByStructureCodeProvider(
            _activeStructureCode,
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
      activeResourceByStructureCodeProvider(
        _activeStructureCode,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(
                            data.liveAttributes[_primaryActiveTile.titleKey],
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        if (data.liveAttributes[
                                _primaryActiveTile.subtitleKey] !=
                            null)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              data.liveAttributes[
                                  _primaryActiveTile.subtitleKey],
                            ),
                          ),
                        for (final key in _primaryActiveTile.extraKeys)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(data.liveAttributes[key]),
                          ),
                        const SizedBox(
                          height: AppSpacing.lg,
                        ),

                        ///
                        ..._buildRefTileListView(
                          data,
                          _refTileList,
                        ),
                      ],
                    ),
                    for (final addon in data.addons) ...[
                      const Divider(),
                      Flexible(
                        child: addon.resourceDetailAddonView(
                          activeStructureCode: _activeStructureCode,
                          resourceId: widget.resourceId,
                        ),
                      ),
                    ]
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

  Iterable<Widget> _buildRefTileListView(ActiveResource activeResource,
      List<template.ActiveRefsTileComponent> refTileList) sync* {
    for (final refTile in refTileList) {
      final refResourceId = activeResource.liveAttributes[refTile.fieldCode];
      if (refResourceId == null ||
          (refResourceId is String && refResourceId.isEmpty) ||
          refResourceId == '0') continue;

      yield const Divider();
      yield _ActiveResourceRefTileView(
        refsTitleComponent: refTile,
        resourceId: refResourceId,
      );
    }
  }
}

class _ActiveResourceRefTileView extends ConsumerStatefulWidget {
  final template.ActiveRefsTileComponent refsTitleComponent;
  final String resourceId;

  const _ActiveResourceRefTileView({
    required this.refsTitleComponent,
    required this.resourceId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceRefTileViewState();
}

class _ActiveResourceRefTileViewState
    extends ConsumerState<_ActiveResourceRefTileView> {
  template.ActiveRefsTileComponent get _tile => widget.refsTitleComponent;

  late final ActiveResourceByStructureCodeProvider _activeResourceProvider;

  String _parseRequestField(template.ActiveRefsTileComponent tile) {
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
    _activeResourceProvider = activeResourceByStructureCodeProvider(
      _tile.activeStructureCode,
    );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        final String requestField = _parseRequestField(_tile);
        ref
            .read(
              _activeResourceProvider.notifier,
            )
            .loadActiveResource(
              requestField: requestField,
              id: widget.resourceId,
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final activeResource = ref.watch(
      _activeResourceProvider,
    );
    return activeResource.when(
      data: (data) {
        if (data == null) {
          return const SizedBox.shrink();
        }
        final borderRadius = BorderRadius.circular(AppSpacing.lg);
        return Material(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: borderRadius,
          child: InkWell(
            borderRadius: borderRadius,
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    _tile.fieldTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      data.liveAttributes[_tile.titleKey],
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  if (data.liveAttributes[_tile.subtitleKey] != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        data.liveAttributes[_tile.subtitleKey],
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
