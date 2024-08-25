import 'package:json_annotation/json_annotation.dart';

part 'commented_user_response.g.dart';

@JsonSerializable()
class CommentedUserResponse {
  final String id;
  final String fullName;

  CommentedUserResponse({
    required this.id,
    required this.fullName,
  });

  factory CommentedUserResponse.fromJson(Map<String, dynamic> json) =>
      _$CommentedUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CommentedUserResponseToJson(this);
}
