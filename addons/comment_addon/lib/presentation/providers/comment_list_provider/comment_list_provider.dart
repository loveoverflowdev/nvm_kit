import 'package:comment_addon/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../comment_repository_provider.dart';

part 'comment_list_provider.g.dart';

typedef CommentListState = AsyncValue<List<Comment>>;

enum PageCountLimitType {
  small,
  medium,
  large,
}

@riverpod
class CommentList extends _$CommentList {
  @override
  CommentListState build({
    required String activeStructureCode,
    required String resourceId,
  }) =>
      const CommentListState.data([]);

  late PageCountLimitType _limitType = PageCountLimitType.medium;

  void setLimit(PageCountLimitType type) {
    _limitType = type;
  }

  int _getPageCount() => switch (_limitType) {
        PageCountLimitType.small => 7,
        PageCountLimitType.medium => 15,
        PageCountLimitType.large => 23,
      };

  void loadCommentList({
    int? offset,
  }) async {
    state = const AsyncValue.loading();

    getCommentListTask(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      limit: _getPageCount(),
    ).match(
      (failure) {
        state = CommentListState.error(
          failure,
          StackTrace.current,
        );
      },
      (response) {
        state = CommentListState.data(response);
      },
    ).run(
      ref.read(commentRepositoryProvider),
    );
  }
}
