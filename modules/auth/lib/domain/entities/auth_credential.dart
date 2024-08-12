class AuthCredential {
  final String userId;
  final String accessToken;
  final String refreshToken;

  AuthCredential({
    required this.accessToken,
    required this.refreshToken,
    required this.userId,
  });
}
