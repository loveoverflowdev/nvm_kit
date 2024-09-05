import 'package:comment_addon/comment_addon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Including [CommentListView] and [CommentPrompt]
class CommentsBox extends ConsumerWidget {
  final String activeStructureCode;
  final String resourceId;

  const CommentsBox({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: CommentListView(
            activeStructureCode: activeStructureCode, 
            resourceId: resourceId,
          ),
        ),
        CommentPrompt(
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
        ),
      ],
    );
  }
}
