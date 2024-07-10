export 'models/models.dart';

import 'package:fpdart/fpdart.dart';
import 'models/models.dart';

final GetWorkspaceListFunction getWorkspaceListFunction =
    () => TaskEither.right([]);

typedef GetWorkspaceListFunction
    = TaskEither<GetWorkspaceListFailure, List<WorkspaceBlock>> Function();
