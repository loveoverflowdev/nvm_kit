import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/domain.dart';
import '../providers.dart';
import 'package:app_ui/app_ui.dart';

import 'project_submit_form_view.dart';

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
      (_) => _loadProjectList(),
    );
  }

  void _loadProjectList() {
    ref.read(projectListProvider.notifier).loadProjectList();
  }

  @override
  Widget build(BuildContext context) {
    final projectList = ref.watch(projectListProvider);
    return Stack(
      children: [
        projectList.when(
          data: (data) => RefreshIndicator(
            onRefresh: () async {
              await ref.read(projectListProvider.notifier).loadProjectList();
            },
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
              ),
              physics: const AlwaysScrollableScrollPhysics(),
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
          ),
          error: (error, stackTrace) => ErrorWidget(error),
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
              key: const Key('project_collection'),
              child: const Icon(Icons.add),
              onPressed: () async {
                final didCreateProject = await _routeToCreateForm(context);
                if (didCreateProject == true && mounted) {
                  _loadProjectList();
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Future<bool?> _routeToCreateForm(BuildContext context) {
    return Navigator.push<bool>(
      context, 
      MaterialPageRoute(builder: (_) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Scaffold(
            appBar: AppBar(
              title: const Text('New Project'),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                icon: const Icon(Icons.clear),
              ),
            ),
            body: const ProjectSubmitFormView(),
          ),
        );
      }),
    );
  }
}
