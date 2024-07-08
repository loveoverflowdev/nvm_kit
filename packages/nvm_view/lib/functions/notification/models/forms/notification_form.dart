import 'action_form.dart';

final class NotificationForm {
  final String title;
  final String content;
  final String type;
  final List<ActionForm> actions;

  NotificationForm({
    required this.title,
    required this.content,
    required this.type,
    required this.actions,
  });
}

/*
{
    "notificationTitle": "[Yêu cầu] Merge Master từ 9999",
    "notificationContent": "318766943 đã tạo một yêu cầu merge",
	"notificationType":"Công Việc",
    "actions": [
        {
            "actionName": "Chấp thuận",
            "actionType": "XhrRequest",
            "requestUrl": "http://s.com",
            "requestMethod": "POST",
            "actionColor": "green-1",
            "actionStatus": "succeed"
        }
    ]
}
*/