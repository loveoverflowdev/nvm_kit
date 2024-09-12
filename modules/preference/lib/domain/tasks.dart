import 'package:fpdart/fpdart.dart';

import 'entities.dart';
import 'repositories.dart';

ReaderTaskEither<UserPreferenceRepository, UserFailure, User>
    getCurrentUserTask() => ReaderTaskEither(
          (respository) {
            return respository.getCurrentUser().run();
          },
        );
