import 'package:app_ui/app_ui.dart'
    show AppErrorWidget, AppCircularLoadingWidget, AppSpacing;
import 'package:comment_addon/comment_addon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentsPreview extends ConsumerStatefulWidget {
  final String activeStructureCode;
  final String resourceId;
  final int limit;

  const CommentsPreview({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
    this.limit = 3,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CommentsPreviewState();
}

class _CommentsPreviewState extends ConsumerState<CommentsPreview> {
  String get _activeStructureCode => widget.activeStructureCode;

  String get _resourceId => widget.resourceId;

  int get _limit => widget.limit;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadCommentList();
    });
  }

  void _loadCommentList() {
    ref
        .read(commentListProvider(
          activeStructureCode: _activeStructureCode,
          resourceId: _resourceId,
        ).notifier)
        .loadCommentList(
          limit: _limit,
        );
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    final commentList = ref.watch(commentListProvider(
      activeStructureCode: _activeStructureCode,
      resourceId: _resourceId,
    ));
    const double commentTileHeight = 44;
    return commentList.when(
      data: (data) => Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          borderRadius: BorderRadius.circular(AppSpacing.lg),
        ),
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: data.length * commentTileHeight + 56),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final comment in data)
                Flexible(
                  child: SizedBox(
                    height: commentTileHeight,
                    child: CommentCell(
                      authorName: comment.createdByUser.fullName,
                      content: comment.commentContent,
                      topic: '',
                    ),
                  ),
                ),
              Flexible(
                child: CommentPrompt(
                  activeStructureCode: _activeStructureCode,
                  resourceId: _resourceId,
                  onCreated: () {
                    _loadCommentList();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}

// class CommentsPreview extends ConsumerWidget {
//   final String activeStructureCode;
//   final String resourceId;

//   const CommentsPreview({
//     super.key,
//     required this.activeStructureCode,
//     required this.resourceId,
//   });
// }
