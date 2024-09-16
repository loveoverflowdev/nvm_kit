import 'package:json_annotation/json_annotation.dart';

part 'progress.g.dart';

@JsonSerializable()
class Progress {
  final String id;
  final num progress;
  final String title;
  final String description;
  final String color;
  final String icon;

  Progress({
    required this.id,
    required this.progress,
    required this.title,
    required this.description,
    required this.color,
    required this.icon,
  });

  factory Progress.fromJson(Map<String, dynamic> json) => _$ProgressFromJson(json);
  Map<String, dynamic> toJson() => _$ProgressToJson(this);
}
