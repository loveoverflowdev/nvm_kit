import 'package:active_resource/domain.dart';
import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart'
    show
        ActiveResourceByStructureCodeProvider,
        activeResourceByStructureCodeProvider,
        activeStructureByCodeProvider;

class ActiveResourceDetailView extends ConsumerStatefulWidget {
  final template.ActiveDetailComponent detailComponent;

  final void Function({
    required String? contextName,
    required String activeResourceId,
  })? onRouteUpdateForm;

  final String resourceId;

  const ActiveResourceDetailView({
    super.key,
    required this.detailComponent,
    required this.resourceId,
    required this.onRouteUpdateForm,
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
  
  String? get _updateFormContextName => widget.detailComponent.updateFormContextName;

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

        ///
        for (final key in tile.extraKeys) RequestField.name(key),
      ]),
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
                    Consumer(
                      builder: (_, WidgetRef ref, __) {
                        final activeStructure = ref.watch(
                          activeStructureByCodeProvider(
                            _activeStructureCode,
                          ),
                        );
                        return activeStructure.when(
                          loading: () => const AppCircularLoadingWidget(),
                          error: (error, stackTrace) => AppErrorWidget(
                            error,
                            stackTrace: stackTrace,
                          ),
                          data: (activeStructure) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: AppSpacing.md,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Builder(
                                            builder: (context) {
                                              final index = activeStructure
                                                  .fields
                                                  .indexWhere(
                                                (element) =>
                                                    element.key ==
                                                    _primaryActiveTile.titleKey,
                                              );
                                              final attributeLabel =
                                                  activeStructure
                                                      .fields[index].title;
                                              return Text(
                                                attributeLabel,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              );
                                            },
                                          ),
                                          Flexible(
                                            child: Text(
                                              data.liveAttributes[
                                                  _primaryActiveTile.titleKey],
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    if (_updateFormContextName != null)
                                      IconButton(
                                        onPressed: () {
                                          widget.onRouteUpdateForm?.call(contextName: _updateFormContextName, activeResourceId: widget.resourceId,);
                                        },
                                        icon: const Icon(Icons.edit),
                                      ),
                                  ],
                                ),

                                if (data.liveAttributes[
                                        _primaryActiveTile.subtitleKey] !=
                                    null)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: AppSpacing.md,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Builder(
                                          builder: (context) {
                                            final index = activeStructure.fields
                                                .indexWhere(
                                              (element) =>
                                                  element.key ==
                                                  _primaryActiveTile
                                                      .subtitleKey,
                                            );
                                            final attributeLabel =
                                                activeStructure
                                                    .fields[index].title;
                                            return Text(
                                              attributeLabel,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            );
                                          },
                                        ),
                                        Flexible(
                                          child: Text(
                                            data.liveAttributes[
                                                _primaryActiveTile.subtitleKey],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                for (final key in _primaryActiveTile.extraKeys)
                                  Builder(builder: (context) {
                                    final index =
                                        activeStructure.fields.indexWhere(
                                      (element) => element.key == key,
                                    );
                                    final attributeLabel =
                                        activeStructure.fields[index].title;
                                    final value = data.liveAttributes[key];
                                    if (value == null ||
                                        value?.isEmpty == true) {
                                      return const SizedBox.shrink();
                                    }
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: AppSpacing.md,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            attributeLabel,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(data.liveAttributes[key]),
                                        ],
                                      ),
                                    );
                                  }),
                                const SizedBox(
                                  height: AppSpacing.lg,
                                ),

                                ///
                                ..._buildRefTileListView(
                                  data,
                                  _refTileList,
                                ),
                              ],
                            );
                          },
                        );
                      },
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
                      data.liveAttributes[_tile.titleKey] ?? '',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  if (data.liveAttributes[_tile.subtitleKey] != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        data.liveAttributes[_tile.subtitleKey] ?? '',
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
