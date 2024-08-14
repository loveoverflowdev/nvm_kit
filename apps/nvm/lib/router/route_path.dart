enum RoutePaths {
  home,
  workspace,
  signin,
  register,
  notification,
  profile;

  String get name => switch (this) {
        RoutePaths.home => 'home',
        RoutePaths.workspace => 'workspace',
        RoutePaths.signin => 'signin',
        RoutePaths.register => 'register',
        RoutePaths.notification => 'notification',
        RoutePaths.profile => 'profile',
      };
}
