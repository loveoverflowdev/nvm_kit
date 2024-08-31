import 'package:json_annotation/json_annotation.dart';
import 'package:template_parser/core.dart';

part 'active_detail_component.g.dart';

@JsonSerializable()
class ActiveDetailComponent implements Component {
  late final String activeStructureCode;
  late final String titleKey;
  late final String? subtitleKey;
  late final List<String> extraKeys;

  ActiveDetailComponent({
    required this.activeStructureCode,
    required this.titleKey,
    required this.extraKeys,
    this.subtitleKey,
  });

  @override
  factory ActiveDetailComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveDetailComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveDetailComponentToJson(this);
}
