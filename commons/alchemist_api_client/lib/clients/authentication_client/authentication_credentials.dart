class AuthenticationCredentials {
  final String userId;
  final String accessToken;
  final String refreshToken;

  AuthenticationCredentials({
    required this.userId,
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthenticationCredentials.fromJson(Map<String, dynamic> json) {
    return AuthenticationCredentials(
      userId: json['userId'],
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );
  }

  Map<String, String> toJson() {
    return {
      'userId': userId,
      'accessToken': accessToken,
      'refreshToken': refreshToken,
    };
  }
}
