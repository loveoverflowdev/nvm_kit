
import 'package:comment_addon/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Assuming these imports exist based on your domain models

part 'comment_input_provider.g.dart';

@riverpod
class CommentInput extends _$CommentInput {
  @override
  CommentPayload build() {
    return CommentPayload.pure();
  }

  bool get isValid => state.content.isValid;

  void makeDirty() {
    state = state.copyWith(
      content: CommentContent.dirty(state.content.value),
    );
  }

  void changeComment(String newValue) {
    state = state.copyWith(content: CommentContent.dirty(newValue));
  }
}
