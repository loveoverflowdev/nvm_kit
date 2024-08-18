import 'package:alchemist_api_client/alchemist_api_client.dart';
import 'package:comment_addon/comment_addon.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_repository_provider.g.dart';

@riverpod
CommentRepository commentRepository(CommentRepositoryRef ref) =>
    RemoteCommentRepository(
      apiClient: ApiClient.nvm(),
      tokenProvider: () async {},
    );
