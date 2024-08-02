class AuthCredentials {
  final String userId;
  final String accessToken;
  final String refreshToken;

  AuthCredentials({
    required this.userId,
    required this.accessToken,
    required this.refreshToken,
  });
}
