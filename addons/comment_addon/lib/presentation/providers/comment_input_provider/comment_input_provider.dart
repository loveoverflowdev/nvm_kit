import 'package:comment_addon/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commentInputProvider =
    StateNotifierProvider<CommentInputNotifier, CommentPayload>(
  (ref) => CommentInputNotifier(),
);

final class CommentInputNotifier extends StateNotifier<CommentPayload> {
  CommentInputNotifier() : super(CommentPayload.pure());

  bool get isValid => state.content.isValid;

  void makeDirty() {
    state = state.copyWith(
      content: CommentContent.dirty(state.content.value),
    );
  }

  void setComment(String newValue) {
    state = state.copyWith(content: CommentContent.dirty(newValue.trim()));
  }

  String get content => state.content.value;
}
