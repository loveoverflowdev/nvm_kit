final class NotificationBlock {
  final String title;
  final String description;
  final String content;
  final List<dynamic> actionList;

  NotificationBlock({
    required this.title,
    required this.description,
    required this.content,
    required this.actionList,
  });

  factory NotificationBlock.empty() {
    return NotificationBlock(
      title: '',
      description: '',
      content: '',
      actionList: List.empty(),
    );
  }
}
