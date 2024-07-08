import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart';

class ProjectListView extends ConsumerWidget {
  const ProjectListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectList = ref.watch(projectListProvider);

    return projectList.when(
      data: (projectList) => ListView.builder(
        itemCount: projectList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(projectList[index].name),
          );
        },
      ),
      error: (error, _) => ErrorWidget(error),
      loading: () => const CircularProgressIndicator(),
    );
    // return ListView.builder(
    //   itemCount: ,
    //   itemBuilder: (context, index) {

    //   },
    // );
  }
}
