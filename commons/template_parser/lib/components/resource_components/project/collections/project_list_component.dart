import 'package:json_annotation/json_annotation.dart';
import '../../../resource_components.dart';

part 'project_list_component.g.dart';

@JsonSerializable()
class ProjectListComponent extends ResourceComponent {
  @override
  late final String type;
  final ProjectTileComponent tile;

  ProjectListComponent({
    required this.tile,
  }) {
    type = super.type;
  }

  @override
  factory ProjectListComponent.fromJson(Map<String, dynamic> json) =>
      _$ProjectListComponentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProjectListComponentToJson(this);
}
