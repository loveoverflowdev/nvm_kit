import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_failure.freezed.dart';

@freezed
class CommentFailure with _$CommentFailure implements Exception {
  CommentFailure._();
  factory CommentFailure.badRequest({required String message}) = _BadRequest;
  factory CommentFailure.unauthorized() = _Unauthorized;
  factory CommentFailure.internalServer() = _InternalServer;
  factory CommentFailure.apiConnection() = _ApiConnection;
  factory CommentFailure.unimplemented() = _Unimplemented;

  factory CommentFailure.fromError(
    Object failure,
  ) {
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
