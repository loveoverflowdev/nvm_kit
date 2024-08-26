import 'package:flutter/widgets.dart';
import 'package:app_ui/app_ui.dart';

class CommentCell extends StatelessWidget {
  final String authorName;
  final String content;
  final String? topic;

  const CommentCell({
    super.key,
    required this.authorName,
    required this.content,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
      child: Column(
        children: [
          Text(
            authorName, 
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Flexible(
            child: Text(content),
          ),
        ],
      ),
    );
  }
}
