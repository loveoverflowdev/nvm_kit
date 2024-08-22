import 'package:json_annotation/json_annotation.dart';

import '../progress_response.dart';
import '../role_response.dart';

part 'roles_board_response.g.dart';

@JsonSerializable()
class RolesBoardResponse {
  final String id;
  final String boardName;
  final String description;

  final dynamic createdBy;
  final dynamic createdAt;
  final dynamic updatedBy;
  final dynamic updatedAt;
  final dynamic createdByUser;
  final dynamic updatedByUser;

  final List<RoleResponse> roles;
  final List<ProgressResponse> progresses;

  RolesBoardResponse({
    required this.id,
    required this.boardName,
    required this.description,
    required this.roles,
    required this.createdBy,
    required this.createdAt,
    required this.updatedBy,
    required this.updatedAt,
    required this.createdByUser,
    required this.updatedByUser,
    required this.progresses,
  });

  factory RolesBoardResponse.fromJson(Map<String, dynamic> json) =>
      _$RolesBoardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RolesBoardResponseToJson(this);
}

/*
"createdBy": "605303072528270018",
  "updatedBy": "0",
  "createdAt": "2024-08-15 07:11:00",
  "updatedAt": null,
  "createdByUser": {
      "id": "605303072528270018",
      "fullName": "NVM Team"
  },
  "updatedByUser": null
*/

/*
{
  "id": "657763459693282282",
  "boardName": "Board Task",
  "description": "Mô tả board công việc",
  "widgetRoles": [
      {
          "id": "657763459697477371",
          "name": "Tester",
          "shortName": "test",
          "description": "Người kiểm thử dự án"
      },
      {
          "id": "657763459697477551",
          "name": "Developer",
          "shortName": "dev",
          "description": "Người trực tiếp làm dự án"
      },
      {
          "id": "657763459697478396",
          "name": "Designer",
          "shortName": "degisn",
          "description": "Người thiết kế dự án"
      }
  ],
  "widgetProgresses": [
      {
          "id": "657763459697476776",
          "progress": 100,
          "progressTitle": "Đã hoàn thành",
          "description": "Đã hoàn thành hết",
          "color": "",
          "icon": ""
      },
      {
          "id": "657763459697476779",
          "progress": 90,
          "progressTitle": "Gần như xong rồi, đang kiểm tra",
          "description": "Đã hoàn thành 90%, đang kiểm tra lại",
          "color": "",
          "icon": ""
      },
      {
          "id": "657763459697477924",
          "progress": 10,
          "progressTitle": "Đang xem xét yêu cầu",
          "description": "Đang xem xét yêu cầu",
          "color": "",
          "icon": ""
      },
      {
          "id": "657763459697479203",
          "progress": 70,
          "progressTitle": "Sắp xong rồi",
          "description": "Đã hoàn thành 70%, đang kiểm tra lại",
          "color": "",
          "icon": ""
      },
      {
          "id": "657763459697479311",
          "progress": 40,
          "progressTitle": "Đang triển khai",
          "description": "Đang triển khai",
          "color": "",
          "icon": ""
      },
      {
          "id": "657763459701671659",
          "progress": 0,
          "progressTitle": "Chưa bắt đầu",
          "description": "Chưa bắt đầu xử lý",
          "color": "",
          "icon": ""
      }
  ],
  "createdBy": "605303072528270018",
  "updatedBy": "0",
  "createdAt": "2024-08-15 07:11:00",
  "updatedAt": null,
  "createdByUser": {
      "id": "605303072528270018",
      "fullName": "NVM Team"
  },
  "updatedByUser": null
}
*/
