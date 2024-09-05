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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          authorName,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        Flexible(
          child: Text(content),
        ),
      ],
    );
  }
}
