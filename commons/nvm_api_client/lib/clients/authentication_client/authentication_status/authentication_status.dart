import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_status.freezed.dart';

@freezed
class AuthenticationStatus with _$AuthenticationStatus {
  AuthenticationStatus._();
  factory AuthenticationStatus.unknown() = _Unknown;
  factory AuthenticationStatus.authenticated({
    required String userId,
    required String accessToken,
    required String refreshToken,
  }) = _Authenticated;
  factory AuthenticationStatus.unauthenticated() = _Unauthenticated;
}
