import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart' show BasilTheme;
import 'package:app_failure/app_failure.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm_app_builder/router.dart';

import 'package:auth/auth.dart' as auth;
import 'package:notification/notification.dart' as notification;
import 'package:project/project.dart' as project;
import 'package:workspace/workspace.dart' as workspace;
import 'package:preference/preference.dart' as preference;
import 'package:active_resource/active_resource.dart' as active_resource;

// Addons
import 'package:comment_addon/comment_addon.dart' as comment_addon;
import 'package:roles_board_addon/roles_board_addon.dart' as roles_board_addon;

import '../template_repository.dart';

class NvmApp extends StatefulWidget {
  final TemplateRepository templateRepository;
  //
  final NavigationGuard navigationGuard;
  final auth.AuthRepository authRepository;
  final notification.NotificationRepository notificationRepository;
  final project.ProjectRepository projectRepository;
  final workspace.WorkspaceRepository workspaceRepository;
  final preference.UserPreferenceRepository userPreferenceRepository;
  final active_resource.ActiveResourceRepository activeResourceRepository;
  final active_resource.RemoteActiveStructureRepository
      remoteActiveStructureRepository;
  final active_resource.LocalActiveStructureRepository
      localActiveStructureRepository;
  //
  final comment_addon.CommentRepository commentRepository;
  final roles_board_addon.RemoteRolesBoardRepository remoteRolesBoardRepository;
  final roles_board_addon.LocalRolesBoardRepository localRolesBoardRepository;
  final roles_board_addon.RolesBoardResourceStateRepository
      rolesBoardResourceStateRepository;
  final roles_board_addon.RolesBoardUserRepository rolesBoardUserRepository;

  const NvmApp({
    super.key,
    required this.templateRepository,
    required this.navigationGuard,
    required this.authRepository,
    required this.notificationRepository,
    required this.projectRepository,
    required this.workspaceRepository,
    required this.userPreferenceRepository,
    required this.activeResourceRepository,
    required this.remoteActiveStructureRepository,
    required this.localActiveStructureRepository,
    //
    required this.commentRepository,
    required this.remoteRolesBoardRepository,
    required this.localRolesBoardRepository,
    required this.rolesBoardResourceStateRepository,
    required this.rolesBoardUserRepository,
  });

  @override
  State<NvmApp> createState() => _NvmAppState();
}

class _NvmAppState extends State<NvmApp> {
  late final GoRouter _router;
  late final ThemeData _theme;

  @override
  void initState() {
    super.initState();
    // TODO: inject from app
    final template = widget.templateRepository.getTemplate();
    _router = RouterBuilder(
      template: template,
      navigationGuard: widget.navigationGuard,
    ).build();

    _theme = const BasilTheme().toThemeData();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [
        AuthStateObserver(),
      ],
      overrides: [
        auth.authRepositoryProvider.overrideWithValue(
          widget.authRepository,
        ),
        notification.notificationRepositoryProvider.overrideWithValue(
          widget.notificationRepository,
        ),
        project.projectRepositoryProvider.overrideWithValue(
          widget.projectRepository,
        ),
        workspace.workspaceRepositoryProvider.overrideWithValue(
          widget.workspaceRepository,
        ),
        preference.userPreferenceRepositoryProvider.overrideWithValue(
          widget.userPreferenceRepository,
        ),
        active_resource.remoteActiveStructureRepositoryProvider
            .overrideWithValue(
          widget.remoteActiveStructureRepository,
        ),
        active_resource.localActiveStructureRepositoryProvider
            .overrideWithValue(
          widget.localActiveStructureRepository,
        ),
        active_resource.activeResourceRepositoryProvider.overrideWithValue(
          widget.activeResourceRepository,
        ),
        comment_addon.commentRepositoryProvider.overrideWithValue(
          widget.commentRepository,
        ),
        roles_board_addon.remoteRolesBoardRepositoryProvider.overrideWithValue(
          widget.remoteRolesBoardRepository,
        ),
        roles_board_addon.localRolesBoardRepositoryProvider.overrideWithValue(
          widget.localRolesBoardRepository,
        ),
        roles_board_addon.rolesBoardResourceStateRepositoryProvider
            .overrideWithValue(
          widget.rolesBoardResourceStateRepository,
        ),
        roles_board_addon.rolesBoardUserRepositoryProvider.overrideWithValue(
          widget.rolesBoardUserRepository,
        ),
      ],
      child: Consumer(
        builder: (_, WidgetRef ref, __) {
          // TODO: So status in future
          ref.listen(
            auth.signoutProvider,
            (previous, next) {
              if (next.hasValue) {
                _router.go(RouterBuilder.initialLocation);
              }
            },
          );
          return MaterialApp.router(
            title: 'NVM',
            theme: _theme,
            routerConfig: _router,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}

final class AuthStateObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (newValue is AsyncError && newValue.error is AppFailure) {
      final failure = newValue.error as AppFailure;
      if (failure.isUnauthorized) {
        container.read(auth.signoutProvider.notifier).signOut();
      }
    }
  }
}
