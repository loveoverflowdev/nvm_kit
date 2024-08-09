// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import '../../component_element.dart';

part 'tile_element.g.dart';

@JsonSerializable()
class TileElement {
  final String titleActiveFieldKey;
  final String? subtileActiveFieldKey;
  final ComponentElement child;

  TileElement({
    required this.titleActiveFieldKey,
    this.subtileActiveFieldKey,
    required this.child,
  });

  factory TileElement.fromJson(Map<String, dynamic> json) =>
      _$TileElementFromJson(json);

  Map<String, dynamic> toJson() => _$TileElementToJson(this);
}
