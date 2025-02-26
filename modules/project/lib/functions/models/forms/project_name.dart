import 'package:formz/formz.dart';

enum ProjectNameError {
  empty;

  String get errorText {
    switch (this) {
      case ProjectNameError.empty:
        return 'Project name cannot be empty';
    }
  }
}

class ProjectName extends FormzInput<String, ProjectNameError> {
  const ProjectName.pure() : super.pure('');

  const ProjectName.dirty({String value = ''}) : super.dirty(value);

  @override
  ProjectNameError? validator(String value) {
    return value.isEmpty ? ProjectNameError.empty : null;
  }
}
