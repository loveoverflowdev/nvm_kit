import 'package:app_ui/app_ui.dart'
    show AppErrorWidget, AppCircularLoadingWidget;
import 'package:comment_addon/comment_addon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentsPreview extends ConsumerWidget {
  final String activeStructureCode;
  final String resourceId;

  const CommentsPreview({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentList = ref.watch(commentListProvider(
      activeStructureCode: activeStructureCode, resourceId: resourceId,
    ));
    return commentList.when(
      data: (data) => Column(
        children: [
          for (final comment in data)
            CommentCell(
              authorName: comment.commentTitle,
              content: comment.commentContent,
              topic: '',
            ),
          CommentPrompt(),
        ],
      ),
      error: (error, stackTrace) =>
          AppErrorWidget(error, stackTrace: stackTrace),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
