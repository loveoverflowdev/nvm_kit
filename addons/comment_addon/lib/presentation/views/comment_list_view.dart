import 'package:app_ui/app_ui.dart'
    show AppErrorWidget, AppCircularLoadingWidget;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart' show commentListProvider;
import 'comment_cell.dart';

class CommentListView extends ConsumerWidget {
  final String activeStructureCode;
  final String resourceId;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  const CommentListView({
    super.key,
    this.shrinkWrap = false,
    this.physics,
    required this.activeStructureCode,
    required this.resourceId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentList = ref.watch(commentListProvider(
      activeStructureCode: activeStructureCode, resourceId: resourceId,
    ));
    return commentList.when(
      data: (data) => ListView.builder(
        shrinkWrap: shrinkWrap,
        physics: physics,
        itemBuilder: (context, index) {
          final comment = data[index];
          return CommentCell(
            authorName: comment.commentTitle,
            content: comment.commentContent,
            topic: '', 
            createdTime: comment.createdTime,
          );
        },
      ),
      error: (error, stackTrace) =>
          AppErrorWidget(error, stackTrace: stackTrace),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
