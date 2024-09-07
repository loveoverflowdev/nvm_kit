import 'package:app_ui/app_ui.dart'
    show
        AppCircularLoadingWidget,
        AppErrorWidget,
        AppSpacing,
        showAppModelBottomSheet;
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

  late List<Comment> _comments;

  @override
  void initState() {
    super.initState();
    _comments = [];
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

    return commentList.when(
      data: (data) {
        _comments = data.take(_limit).toList();
        return _buildCommentsColumn(context, _comments);
      },
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () {
        if (_comments.isNotEmpty) {
          return _buildCommentsColumn(context, _comments);
        }
        return const AppCircularLoadingWidget();
      },
    );
  }

  Widget _buildCommentsColumn(BuildContext context, List<Comment> data) {
    const double commentTileHeight = 48;
    final borderRadius = BorderRadius.circular(AppSpacing.lg);
    return InkWell(
      borderRadius: borderRadius,
      onTap: () {
        showAppModelBottomSheet(
          context: context,
          builder: (context) {
            return CommentsBox(
              activeStructureCode: _activeStructureCode,
              resourceId: _resourceId,
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.lg),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
          borderRadius: borderRadius,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: data.length * commentTileHeight + 56 + 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 28,
                child: Text(
                  'Comments',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              const Divider(),
              for (final comment in data.reversed)
                Flexible(
                  child: SizedBox(
                    height: commentTileHeight,
                    child: CommentCell(
                      authorName: comment.createdByUser.fullName,
                      content: comment.commentContent,
                      createdTime: comment.createdTime,
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
    );
  }
}
