import 'package:app_ui/app_ui.dart'
    show AppErrorWidget, AppCircularLoadingWidget, AppSpacing;
import 'package:app_ui/widgets.dart';
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
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    ));
    return commentList.when(
      data: (data) {
        return Visibility(
          visible: data.isNotEmpty,
          replacement: const AppEmptyWidget(),
          child: ListView.separated(
            shrinkWrap: shrinkWrap,
            physics: physics,
            itemCount: data.length,
            reverse: true,
            padding: const EdgeInsets.only(
              left: AppSpacing.lg,
              right: AppSpacing.lg,
              bottom: AppSpacing.lg,
            ),
            itemBuilder: (context, index) {
              final comment = data[index];
              return CommentCell(
                authorName: comment.createdByUser.fullName,
                content: comment.commentContent,
                topic: '',
                createdTime: comment.createdTime,
              );
            },
            separatorBuilder: (context, index) => const Divider(
              color: Colors.transparent,
            ),
          ),
        );
      },
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
