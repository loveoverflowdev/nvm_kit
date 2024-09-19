import 'package:active_resource/presentation/providers/active_resource_providers/active_resource_delete_provider.dart';
import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:template_parser/template_parser.dart' as template;

import '../providers.dart' show activeResourceListByStructureCodeProvider;
import '../widgets.dart';

class ActiveResourceCollectionView extends ConsumerStatefulWidget {
  final void Function(String? detailContextName, String resourceId)?
      onViewDetail;
  final void Function(String? createFormContextName)? onRouteCreateForm;

  final template.ActiveCollectionComponent collectionComponent;

  final void Function(String resourceId)? onTapResource;

  final String? projectId;

  const ActiveResourceCollectionView({
    super.key,
    required this.collectionComponent,
    required this.projectId,
    this.onViewDetail,
    this.onTapResource,
    this.onRouteCreateForm,
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

  String? get _detailContextName =>
      widget.collectionComponent.detailContextName;
  String? get _createFormContextName =>
      widget.collectionComponent.createFormContextName;

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
          .read(activeResourceListByStructureCodeProvider(
            _activeStructureCode,
          ).notifier)
          .loadActiveResourceList(
            projectId: widget.projectId,
            requestField: _parseRequestField(_activeTile),
          );
    });
  }

  String _getDeleteProviderKey({
    required String activeStructureCode,
  }) {
    return 'delete_active_resource_in_collection_view@$_activeStructureCode';
  }
  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(
      activeResourceListByStructureCodeProvider(
        _activeStructureCode,
      ),
    );
    final tileComponent = widget.collectionComponent.tile;
    final deleteProvider = activeResourceDeleteProvider(
      activeStructureCode: _activeStructureCode, 
      key: _getDeleteProviderKey(activeStructureCode: _activeStructureCode),
    );
    
    ref.listen(deleteProvider, 
      (previous, next) {
        if (next.isLoading) {
          showLoadingDialog(context);
        } else {
          hideLoadingDialog(context);

          if (next.hasValue) {
            print('+++++++++++++Deleted');
            showScaffoldMessage(context, 'Deleted');
          } else if (next.hasError) {
            // Fix this
            print('+++++++++++++${next.error}');
            showScaffoldMessage(context, 'Error');
          }
        }
      },
    );
    
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
                

                

                return ActiveResourceListTile(
                  title: liveAttributes[tileComponent.titleKey],
                  subtitleKey: tileComponent.subtitleKey != null
                      ? liveAttributes[tileComponent.subtitleKey!]
                      : null, 
                    onPressed: () {
                      widget.onTapResource?.call(activeResource.id,);
                      widget.onViewDetail
                        ?.call(_detailContextName, activeResource.id,);
                    }, 
                    onShareAction: () {  },
                    onDeleteAction: () {
                      ref.read(deleteProvider.notifier).deleteById(activeResource.id);
                    },
                    onEditAction: () {  },
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
