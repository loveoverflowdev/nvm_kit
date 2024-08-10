import 'package:project/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_input_provider.g.dart';

@riverpod
class ProjectInput extends _$ProjectInput {
  @override
  ProjectForm build() => ProjectForm.pure();

  void changeName(String newValue) {
    state = state.copyWith(
      name: ProjectName.dirty(value: newValue),
    );
  }

  void changeDescription(String newValue) {
    state = state.copyWith(
      description: ProjectDescription.dirty(value: newValue),
    );
  }
}
