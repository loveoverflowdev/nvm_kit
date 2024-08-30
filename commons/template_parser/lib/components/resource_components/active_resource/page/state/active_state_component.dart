import 'package:json_annotation/json_annotation.dart';

part 'active_state_component.g.dart';

@JsonSerializable()
final class ActiveStateComponent {
  final String stateCode;
  final Map<String, dynamic> liveAttributes;

  ActiveStateComponent({
    required this.stateCode,
    required this.liveAttributes,
  });

  factory ActiveStateComponent.fromJson(Map<String, dynamic> json) =>
      _$ActiveStateComponentFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveStateComponentToJson(this);
}

/*
"screenState": {
  "listView": {
    "fields": ["story_name"]
    "filtering": [],
    "limit": 10,
    "offset": 0
  }
},
*/
