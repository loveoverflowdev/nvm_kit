import 'package:app_ui/app_ui.dart';
import 'package:flutter/widgets.dart';

class CommentCell extends StatelessWidget {
  final String authorName;
  final String content;
  final DateTime? createdTime;
  final String? topic;

  const CommentCell({
    super.key,
    required this.authorName,
    required this.content,
    required this.topic,
    required this.createdTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                authorName,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ),

            if (createdTime != null)
              AppTimeDisplayWidget(
                dateTime: createdTime!,
              ),
          ],
        ),
        Flexible(
          child: Text(content),
        ),
      ],
    );
  }
}
