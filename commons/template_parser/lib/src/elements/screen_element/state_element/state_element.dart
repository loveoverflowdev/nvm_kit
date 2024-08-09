import 'package:json_annotation/json_annotation.dart';

part 'state_element.g.dart';

@JsonSerializable()
final class StateElement {
  final String stateCode;
  final Map<String, dynamic> attributes;

  StateElement({
    required this.stateCode,
    required this.attributes,
  });

  factory StateElement.fromJson(Map<String, dynamic> json) =>
      _$StateElementFromJson(json);

  Map<String, dynamic> toJson() => _$StateElementToJson(this);
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