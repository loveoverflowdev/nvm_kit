import 'package:flutter/widgets.dart';

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
    return const Placeholder();
  }
}
