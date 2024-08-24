import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/domain.dart';
import '../providers.dart';
import 'package:app_ui/app_ui.dart';

class ProjectListView extends ConsumerStatefulWidget {
  final void Function(Project project) onProjectPressed;

  const ProjectListView({
    super.key,
    required this.onProjectPressed,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProjectListViewState();
}

class _ProjectListViewState extends ConsumerState<ProjectListView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => ref.read(projectListProvider.notifier).loadProjectList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final projectList = ref.watch(projectListProvider);
    return projectList.when(
      data: (data) => ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final project = data[index];
          return ListTile(
            onTap: () => widget.onProjectPressed(project),
            leading: const Icon(Icons.work),
            title: Text(project.name),
            subtitle: Text(project.createdAt ?? ''),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
