import 'package:alchemist_api_client/alchemist_api_client.dart';

class NavigationGuard {
  final WorkspaceIdProvider _workspaceIdProvider;
  final TokenProvider _tokenProvider;

  NavigationGuard({
    required WorkspaceIdProvider workspaceIdProvider,
    required TokenProvider tokenProvider,
  })  : _workspaceIdProvider = workspaceIdProvider,
        _tokenProvider = tokenProvider;

  Future<bool> get hasToken => _tokenProvider().then(
        (token) => token?.isNotEmpty == true,
      );

  Future<bool> get didSelectWorkspace => _workspaceIdProvider().then(
        (workspaceId) => workspaceId?.isNotEmpty == true,
      );
}
