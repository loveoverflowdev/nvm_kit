import 'package:app_ui/app_ui.dart' show AppErrorWidget, AppCircularLoadingWidget;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart' show commentListProvider;
import 'comment_cell.dart';

class CommentListView extends ConsumerWidget {
  final String resourceCode;
  final String resourceId;

  const CommentListView({super.key, required this.resourceCode, required this.resourceId,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentList = ref.watch(commentListProvider(resourceCode: resourceCode, resourceId: resourceId));
    return commentList.when(
      data: (data) => ListView.builder(
        itemBuilder: (context, index) {
          final comment = data[index];
          return CommentCell(
            authorName: comment.commentTitle,
            content: comment.commentContent,
            topic: '',
          );
        },
      ), 
      error: (error, stackTrace) => AppErrorWidget(error, stackTrace: stackTrace), 
      loading: () => AppCircularLoadingWidget(),
    );
  }
}
