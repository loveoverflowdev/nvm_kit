export 'models/models.dart';

import 'package:fpdart/fpdart.dart';
import 'models/models.dart';

final SigninFunction signinFunction = ({
  required SigninForm form,
}) =>
    TaskEither.right(SigninBlock());

typedef SigninFunction = TaskEither<SigninFailure, SigninBlock> Function({
  required SigninForm form,
});
