import '../../../../core/failures.dart';

abstract class SignoutFailure implements AuthFailure {
  factory SignoutFailure.fromError(Object error) =>
      SignoutUnimplementedFailure();
}

class SignoutUnimplementedFailure implements SignoutFailure {}
