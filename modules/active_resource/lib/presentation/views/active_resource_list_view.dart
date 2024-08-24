import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceListView extends ConsumerStatefulWidget {
  final String resourceCode;

  const ActiveResourceListView({
    super.key,
    required this.resourceCode,
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
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref
            .read(
              activeResourceListProvider.notifier,
            )
            .loadActiveResourceList(
              resourceCode: widget.resourceCode,
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final activeResourceList = ref.watch(activeResourceListProvider);
    return activeResourceList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final activeResource = data[index];
          return ListTile(
            title: Text(
              activeResource.attributes.toString(),
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
