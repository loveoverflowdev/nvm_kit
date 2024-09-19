import 'package:project/domain.dart';
import 'package:project/presentation/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_provider.g.dart';

@riverpod
Future<Project> project(
  ProjectRef ref, {
  required String projectId,
}) {
  return ref
      .read(projectRepositoryProvider)
      .getProjectId( projectId)
      .run()
      .then(
    (project) {
      return project.fold(
        (failure) => throw failure,
        (data) => data,
      );
    },
  );
}
