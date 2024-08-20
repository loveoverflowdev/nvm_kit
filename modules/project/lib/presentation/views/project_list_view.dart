import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers.dart';

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
    ref.read(projectListProvider.notifier).loadProjectList(
      workspaceIdProvider: () async => '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();

    final projectList = ref.watch(projectListProvider);
    return projectList.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final project = data[index];
          return ListTile(
            title: Text(project.name),
            subtitle: Text(project.description),
          );
        },
      ),
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
