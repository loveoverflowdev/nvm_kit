class SigninBlock {
  final String accessToken;
  final String refreshToken;

  SigninBlock({
    String? accessToken,
    String? refreshToken,
  })  : accessToken = accessToken ?? '',
        refreshToken = refreshToken ?? '';
}
