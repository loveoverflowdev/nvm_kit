// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'project_description.dart';
import 'project_icon.dart';
import 'project_name.dart';

class ProjectForm {
  final ProjectName name;
  final ProjectDescription description;
  final ProjectIcon icon;

  ProjectForm({
    required this.name,
    required this.description,
    required this.icon,
  });

  factory ProjectForm.pure() {
    return ProjectForm(
      name: const ProjectName.pure(),
      description: const ProjectDescription.pure(),
      icon: ProjectIcon.pure(),
    );
  }

  ProjectForm copyWith({
    ProjectName? name,
    ProjectDescription? description,
    ProjectIcon? icon,
  }) {
    return ProjectForm(
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon ?? this.icon,
    );
  }
}
