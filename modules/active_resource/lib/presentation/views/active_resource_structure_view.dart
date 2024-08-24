import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:active_resource/domain.dart';
import 'package:app_ui/app_ui.dart';

import '../providers.dart';

class ActiveResourceStructureView extends ConsumerWidget {
  final String resourceStructureId;

  final Widget Function(
    BuildContext context,
    ActiveResourceStructure structure,
  ) builder;

  const ActiveResourceStructureView({
    super.key,
    required this.builder,
    required this.resourceStructureId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final structure = ref.watch(
      activeResourceStructureProvider(resourceStructureId: resourceStructureId),
    );
    return structure.when(
      data: (data) => builder(context, data),
      error: (error, _) => ErrorWidget(error),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
