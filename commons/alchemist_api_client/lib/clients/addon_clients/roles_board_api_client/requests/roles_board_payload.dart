
final class RolesBoardPayload {
  final String boardName;
  final String description;
  final List<RolePayload> roles;
  final List<ProgressPayload> progresses;

  RolesBoardPayload({
    required this.boardName,
    required this.description,
    required this.roles,
    required this.progresses,
  });

  factory RolesBoardPayload.fromJson(Map<String, dynamic> json) {
    return RolesBoardPayload(
      boardName: json['boardName'],
      description: json['description'],
      roles: (json['widgetRoles'] as List)
          .map((e) => RolePayload.fromJson(e))
          .toList(),
      progresses: (json['widgetProgresses'] as List)
          .map((e) => ProgressPayload.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'boardName': boardName,
      'description': description,
      'widgetRoles': roles.map((e) => e.toJson()).toList(),
      'widgetProgresses': progresses.map((e) => e.toJson()).toList(),
    };
  }
}

final class RolePayload {
  final String name;
  final String shortName;
  final String description;

  RolePayload({
    required this.name,
    required this.shortName,
    required this.description,
  });

  factory RolePayload.fromJson(Map<String, dynamic> json) {
    return RolePayload(
      name: json['name'],
      shortName: json['shortName'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'shortName': shortName,
      'description': description,
    };
  }
}

final class ProgressPayload {
  final int progress;
  final String title;
  final String description;
  
  ProgressPayload({
    required this.progress,
    required this.title,
    required this.description,
  });

  factory ProgressPayload.fromJson(Map<String, dynamic> json) {
    return ProgressPayload(
      progress: json['progress'],
      title: json['progressTitle'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'progress': progress,
      'progressTitle': title,
      'description': description,
    };
  }
}
/*
{
  "boardName": "Board Task",
  "description":"Mô tả board công việc",
  "widgetRoles": [
     {
			 "id":"0",
      "name": "Developer",
      "shortName": "dev",
      "description": "Người trực tiếp làm dự án"
    },
		{
      "name": "Tester",
      "shortName": "test",
      "description": "Người kiểm thử dự án"
    },
		{
      "name": "Designer",
      "shortName": "degisn",
      "description": "Người thiết kế dự án"
    }
  ],
	"widgetProgresses": [
		{
			
      "progress": 100,
      "progressTitle": "Đã hoàn thành",
      "description": "Đã hoàn thành hết"
    },
		 {
			  "id":"0",
      "progress": 90,
      "progressTitle": "Gần như xong rồi, đang kiểm tra",
      "description": "Đã hoàn thành 90%, đang kiểm tra lại"
    },
		{
      "progress": 70,
      "progressTitle": "Sắp xong rồi",
      "description": "Đã hoàn thành 70%, đang kiểm tra lại"
    },
		{
      "progress": 40,
      "progressTitle": "Đang triển khai",
      "description": "Đang triển khai"
    },
		{
      "progress": 10,
      "progressTitle": "Đang xem xét yêu cầu",
      "description": "Đang xem xét yêu cầu"
    },
		{
      "progress": 0,
      "progressTitle": "Chưa bắt đầu",
      "description": "Chưa bắt đầu xử lý"
    }
  ]
}
*/