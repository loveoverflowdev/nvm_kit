import 'package:comment_addon/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../comment_repository_provider.dart';

part 'comment_submit_provider.g.dart';

typedef CommentSubmitState = AsyncValue<void>;

@riverpod
class CommentSubmit extends _$CommentSubmit {
  @override
  CommentSubmitState build({
    required String activeStructureCode,
    required String resourceId,
  }) => const CommentSubmitState.data(null);

  void submit(CommentPayload payload) async {
    state = const AsyncValue.loading();

    // Assuming you have a task to create the comment
    createCommentTask(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      payload: payload,
    ).match(
      (failure) {
        state = CommentSubmitState.error(
          failure,
          failure.stackTrace ?? StackTrace.current,
        );
      },
      (response) {
        state = const CommentSubmitState.data(null);
        // Optionally, you can reload the comment list here or trigger any other side effect
      },
    ).run(
      ref.read(commentRepositoryProvider),
    );
  }
}
