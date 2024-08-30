import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:alchemist_api_client/alchemist_api_client.dart'
    show AlchemistApiRequestFailure;
part 'comment_failure.freezed.dart';

@freezed
class CommentFailure with _$CommentFailure implements Exception {
  CommentFailure._();
  factory CommentFailure.badRequest({
    required String message,
    StackTrace? stackTrace,
  }) = _BadRequest;
  factory CommentFailure.unauthorized({
    StackTrace? stackTrace,
  }) = _Unauthorized;
  factory CommentFailure.internalServer({
    StackTrace? stackTrace,
  }) = _InternalServer;
  factory CommentFailure.apiConnection({
    StackTrace? stackTrace,
  }) = _ApiConnection;
  factory CommentFailure.unimplemented({
    StackTrace? stackTrace,
  }) = _Unimplemented;

  factory CommentFailure.fromError(
    Object failure, {
    StackTrace? stackTrace,
  }) {
    if (failure is AlchemistApiRequestFailure) {
      return switch (failure.statusCode) {
        400 => CommentFailure.badRequest(
            message: failure.body['message'],
          ),
        401 => CommentFailure.unauthorized(),
        500 => CommentFailure.internalServer(),
        -1 => CommentFailure.internalServer(),
        _ => CommentFailure.unimplemented(),
      };
    }
    return CommentFailure.unimplemented();
  }
}
