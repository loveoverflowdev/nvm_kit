import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:comment_addon/domain.dart';
import 'package:fpdart/fpdart.dart';

final class RemoteCommentRepository implements CommentRepository {
  final ApiClient _apiClient;
  final Future<String?> Function() _tokenProvider;

  RemoteCommentRepository({
    required ApiClient apiClient,
    required Future<String?> Function() tokenProvider,
  })  : _apiClient = apiClient,
        _tokenProvider = tokenProvider;

  @override
  TaskEither<CommentFailure, List<Comment>> getCommentList() {
    // TODO: implement getCommentList
    throw UnimplementedError();
  }
}
