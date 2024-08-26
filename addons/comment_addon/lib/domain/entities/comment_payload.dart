
final class CommentPayload {
  final String topic;
  final String title;
  final String content;

  CommentPayload({
    required this.topic,
    required this.content,
    required this.title,
  });
} 

/*
{
	"topic":"Task_Response",
  "commentTitle": "Ghi chú công việc 3",
	"commentContent":"Các mục sau đây cần ghi chú lại: Thông tin yêu cầu, mức độ khả thi"
}
*/