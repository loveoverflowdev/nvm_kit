import 'package:comment_addon/comment_addon.dart';
import 'package:formz/formz.dart';

final class CommentPayload {
  final String topic;
  final CommentContent content;

  CommentPayload({
    required this.topic,
    required this.content,
  });

  factory CommentPayload.pure() {
    return CommentPayload(
      topic: '',
      content: const CommentContent.pure(),
    );
  }

  bool get isValid => Formz.validate([content]);

  CommentPayload copyWith({
    CommentContent? content,
    String? topic,
  }) {
    return CommentPayload(
      content: content ?? this.content,
      topic: topic ?? this.topic,
    );
  }
}

/*
{
	"topic":"Task_Response",
  "commentTitle": "Ghi chú công việc 3",
	"commentContent":"Các mục sau đây cần ghi chú lại: Thông tin yêu cầu, mức độ khả thi"
}
*/
