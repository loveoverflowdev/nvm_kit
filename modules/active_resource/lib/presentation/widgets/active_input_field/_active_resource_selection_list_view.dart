import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';

import '../../providers.dart'
    show
        ActiveResourceListByStructureCodeProvider,
        activeResourceListByStructureCodeProvider;

class ActiveResourceSelectionListView extends ConsumerStatefulWidget {
  final String projectId;
  final String activeStructureCode;
  final String titleKey;
  final String? subtitleKey;
  //
  final String? initialResourceId;

  /// return selected resource id
  final void Function({
    required String resourceId,
    required String resourceTitle,
  }) onResourceSelected;

  const ActiveResourceSelectionListView({
    super.key,
    required this.activeStructureCode,
    required this.projectId,
    required this.titleKey,
    required this.subtitleKey,
    required this.onResourceSelected,
    this.initialResourceId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceSelectionListViewState();
}

class _ActiveResourceSelectionListViewState
    extends ConsumerState<ActiveResourceSelectionListView> {
  late final ActiveResourceListByStructureCodeProvider
      _activeResourceListProvider;

  String _parseRequestField() {
    return RequestField.children([
      RequestField.name('id'),
      RequestField(
        name: 'liveAttributes',
        children: [
          RequestField.name(widget.titleKey),
          if (widget.subtitleKey != null)
            RequestField.name(widget.subtitleKey!),
        ],
      ),
    ]).build();
  }

  @override
  void initState() {
    super.initState();
    _activeResourceListProvider =
        activeResourceListByStructureCodeProvider(widget.activeStructureCode);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(
            _activeResourceListProvider.notifier,
          )
          .loadActiveResourceList(
            projectId: widget.projectId,
            requestField: _parseRequestField(),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(
      _activeResourceListProvider,
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.clear),
        ),
        title: const Text('Select Resource'),
      ),
      body: Stack(
        children: [
          activeResourceList.when(
            data: (data) {
              return Visibility(
                visible: true,
                replacement: const AppEmptyWidget(),
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final activeResource = data[index];
                    final liveAttributes = activeResource.liveAttributes;
                    final title = liveAttributes[widget.titleKey] ?? '';
                    final subtitle = liveAttributes[widget.subtitleKey] ?? '';
                    return ListTile(
                      onTap: () {
                        widget.onResourceSelected.call(
                          resourceId: activeResource.id,
                          resourceTitle: title,
                        );
                        Navigator.pop(context);
                      },
                      title: Text(
                        title,
                      ),
                      subtitle: Text(
                        subtitle,
                      ),
                    );
                  },
                ),
              );
            },
            error: (error, stackTrace) => AppErrorWidget(
              error,
              stackTrace: stackTrace,
            ),
            loading: () => const AppCircularLoadingWidget(),
          ),
        ],
      ),
    );
  }
}
