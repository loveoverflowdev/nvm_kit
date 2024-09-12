import 'package:formz/formz.dart';

enum ProjectDescriptionError {
  empty;

  String get errorText {
    switch (this) {
      case ProjectDescriptionError.empty:
        return 'Project description cannot be empty';
    }
  }
}

class ProjectDescription extends FormzInput<String, ProjectDescriptionError> {
  const ProjectDescription.pure() : super.pure('');

  const ProjectDescription.dirty([super.value = '']) : super.dirty();

  @override
  ProjectDescriptionError? validator(String value) {
    return value.isEmpty ? ProjectDescriptionError.empty : null;
  }
}
