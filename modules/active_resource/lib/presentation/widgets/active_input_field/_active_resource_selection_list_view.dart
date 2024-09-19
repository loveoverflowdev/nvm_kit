import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';

import '../../providers.dart'
    show
        activeResourceListByStructureCodeProvider,
        activeResourceListByStructureIdProvider;

class ActiveResourceSelectionListView extends ConsumerStatefulWidget {
  final String projectId;
  final String activeStructureCode;
  final String titleKey;
  final String? subtitleKey;
  //
  final String? initialResourceId;

  /// return selected resource id
  final void Function(String) onResourceSelected;

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(
            activeResourceListByStructureCodeProvider(
              widget.activeStructureCode,
            ).notifier,
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
      activeResourceListByStructureIdProvider(widget.activeStructureCode),
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
                return ListTile(
                  onTap: () {},
                  title: Text(
                    liveAttributes[widget.titleKey] ?? '',
                  ),
                  subtitle: Text(
                    liveAttributes[widget.subtitleKey] ?? '',
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
      ],
    );
  }
}
