import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart' show activeResourceListProvider;

class ActiveResourceListView extends ConsumerStatefulWidget {
  const ActiveResourceListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceListViewState();
}

class _ActiveResourceListViewState
    extends ConsumerState<ActiveResourceListView> {
  @override
  void initState() {
    super.initState();
    ref.read(activeResourceListProvider.notifier).loadActiveResourceList(
          resourceCode: 'resourceCode', // TODO: urgent
        );
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Text('Active Resource Placeholder'),
    );
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
      error: (error, stackTrace) => Text('error: $error'),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
