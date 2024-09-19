import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project/domain.dart';


final projectInputProvider =
    StateNotifierProvider<ProjectInputNotifier, ProjectForm>(
  (ref) => ProjectInputNotifier(),
);

final class ProjectInputNotifier extends StateNotifier<ProjectForm> {
  ProjectInputNotifier() : super(ProjectForm.pure());

  bool get isValid => state.name.isValid && state.description.isValid;

  ProjectForm getForm() => state;

  void makeDirty() {
    state = state.copyWith(
      name: ProjectName.dirty(state.name.value),
      description: ProjectDescription.dirty(state.description.value),
    );
  }

 void changeName(String newValue) {
    state = state.copyWith(
      name: ProjectName.dirty(newValue.trim()),
    );
  }

  void changeDescription(String newValue) {
    state = state.copyWith(
      description: ProjectDescription.dirty(newValue.trim()),
    );
  }
}
