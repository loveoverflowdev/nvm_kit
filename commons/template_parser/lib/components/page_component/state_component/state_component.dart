import 'package:json_annotation/json_annotation.dart';

part 'state_component.g.dart';

@JsonSerializable()
final class StateComponent {
  final String stateCode;
  final Map<String, dynamic> liveAttributes;

  StateComponent({
    required this.stateCode,
    required this.liveAttributes,
  });

  factory StateComponent.fromJson(Map<String, dynamic> json) =>
      _$StateComponentFromJson(json);

  Map<String, dynamic> toJson() => _$StateComponentToJson(this);
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
