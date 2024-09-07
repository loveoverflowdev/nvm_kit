import 'package:app_ui/app_ui.dart';
import 'package:comment_addon/comment_addon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Including [CommentListView] and [CommentPrompt]
class CommentsBox extends ConsumerStatefulWidget {
  final String activeStructureCode;
  final String resourceId;

  const CommentsBox({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CommentsBoxState();
}

class _CommentsBoxState extends ConsumerState<CommentsBox> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadCommentList();
    });
  }

  void _loadCommentList() {
    // TODO: dynamic limit in the future
    ref
        .read(commentListProvider(
          activeStructureCode: widget.activeStructureCode,
          resourceId: widget.resourceId,
        ).notifier)
        .loadCommentList(
          limit: 15,
        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: const Text('Comments'),
          actions: [
            IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: CommentListView(
                activeStructureCode: widget.activeStructureCode,
                resourceId: widget.resourceId,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg)
                  .copyWith(
                bottom: AppSpacing.lg,
              ),
              child: CommentPrompt(
                activeStructureCode: widget.activeStructureCode,
                resourceId: widget.resourceId,
                onCreated: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
