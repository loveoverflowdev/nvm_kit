class AuthCredentials {
  final String userId;
  final String accessToken;
  final String refreshToken;

  AuthCredentials({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
  });
}
