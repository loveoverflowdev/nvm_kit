export 'models/models.dart';

import 'package:fpdart/fpdart.dart';
import 'models/models.dart';

final GetProjectListFunction getProjectListFunction =
    () => TaskEither.right([]);

final CreateProjectFunction createProjectFunction = ({
  required ProjectForm form,
}) =>
    TaskEither.right(ProjectBlock.empty());

typedef GetProjectListFunction = TaskEither<ProjectFailure, List<ProjectBlock>>
    Function();

typedef CreateProjectFunction = TaskEither<ProjectFailure, ProjectBlock>
    Function({required ProjectForm form});
