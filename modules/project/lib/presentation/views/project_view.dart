import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/domain.dart';

import '../providers.dart';

class ProjectView extends ConsumerWidget {
  final String projectId;
  final Widget Function(BuildContext context, Project project) builder;

  const ProjectView({
    super.key,
    required this.projectId,
    required this.builder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final project = ref.watch(projectProvider(projectId: projectId));
    return project.when(
      data: (data) => builder(context, data),
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
