import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_ui/app_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm_app_builder/router.dart';

import 'package:auth/auth.dart' as auth;
import 'package:notification/notification.dart' as notification;
import 'package:project/project.dart' as project;
import 'package:workspace/workspace.dart' as workspace;
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
  final active_resource.ActiveResourceRepository activeResourceRepository;
  final active_resource.ActiveStructureRepository activeStructureRepository;
  //
  final comment_addon.CommentRepository commentRepository;
  final roles_board_addon.RolesBoardRepository rolesBoardRepository;

  const NvmApp({
    super.key,
    required this.templateRepository,
    required this.navigationGuard,
    required this.authRepository,
    required this.notificationRepository,
    required this.projectRepository,
    required this.workspaceRepository,
    required this.activeResourceRepository,
    required this.activeStructureRepository,
    //
    required this.commentRepository,
    required this.rolesBoardRepository,
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
        active_resource.activeStructureRepositoryProvider.overrideWithValue(
          widget.activeStructureRepository,
        ),
        active_resource.activeResourceRepositoryProvider.overrideWithValue(
          widget.activeResourceRepository,
        ),
        comment_addon.commentRepositoryProvider.overrideWithValue(
          widget.commentRepository,
        ),
        // roles_board_addon.rolesBoardRepositoryProvider.overrideWithValue(
        //   widget.rolesBoardRepository,
        // ),
      ],
      child: MaterialApp.router(
        title: 'NVM',
        theme: _theme,
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
