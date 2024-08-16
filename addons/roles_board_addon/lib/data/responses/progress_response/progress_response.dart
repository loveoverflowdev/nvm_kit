import 'package:json_annotation/json_annotation.dart';

part 'progress_response.g.dart';

@JsonSerializable()
class ProgressResponse {
  final String id;
  final num progress;
  final String title;
  final String description;
  final String color;
  final String icon;

  ProgressResponse({
    required this.id,
    required this.progress,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
  });

  factory ProgressResponse.fromJson(Map<String, dynamic> json) =>
      _$ProgressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressResponseToJson(this);
}

/*
{
  "id": "657763459697476776",
  "progress": 100,
  "progressTitle": "Đã hoàn thành",
  "description": "Đã hoàn thành hết",
  "color": "",
  "icon": ""
}
*/
