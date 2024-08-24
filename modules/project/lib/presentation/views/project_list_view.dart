import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers.dart';
import 'package:app_ui/app_ui.dart';

class ProjectListView extends ConsumerStatefulWidget {
  const ProjectListView({super.key});

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
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final project = data[index];
          return ListTile(
            onTap: () {},
            title: Text(project.name),
            subtitle: Text(project.description),
          );
        },
      ),
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const AppCircularLoading(),
    );
  }
}
