import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_response.g.dart';

@JsonSerializable()
class SigninResponse {
  final String userId;
  final String accessToken;
  final String refreshToken;

  SigninResponse({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
  });

  factory SigninResponse.fromJson(Map<String, dynamic> json) =>
      _$SigninResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SigninResponseToJson(this);
}
