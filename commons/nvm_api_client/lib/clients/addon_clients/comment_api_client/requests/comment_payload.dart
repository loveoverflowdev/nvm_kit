final class CommentPayload {
  final String topic;
  final String title;
  final String content;

  CommentPayload({
    required this.topic,
    required this.title,
    required this.content,
  });

  factory CommentPayload.fromJson(Map<String, dynamic> json) {
    return CommentPayload(
      topic: json['topic'],
      title: json['commentTitle'],
      content: json['commentContent'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'topic': topic,
      'commentTitle': title,
      'commentContent': content,
    };
  }
}
