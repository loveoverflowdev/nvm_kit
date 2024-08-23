import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:app_ui/app_ui.dart';

import 'package:nvm/router.dart';
import 'package:nvm/template_repository.dart';

import 'package:auth/auth.dart' as auth;
import 'package:notification/notification.dart' as notification;
import 'package:project/project.dart' as project;
import 'package:workspace/workspace.dart' as workspace;
import 'package:active_resource/active_resource.dart' as active_resource;

class NvmApp extends StatefulWidget {
  final NavigationGuard navigationGuard;
  final auth.AuthRepository authRepository;
  final notification.NotificationRepository notificationRepository;
  final project.ProjectRepository projectRepository;
  final workspace.WorkspaceRepository workspaceRepository;
  final active_resource.ActiveResourceRepository activeResourceRepository;

  const NvmApp({
    super.key,
    required this.navigationGuard,
    required this.authRepository,
    required this.notificationRepository,
    required this.projectRepository,
    required this.workspaceRepository,
    required this.activeResourceRepository,
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
    final template = TemplateRepository.example().getTemplate();
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
        active_resource.activeResourceRepositoryProvider.overrideWithValue(
          widget.activeResourceRepository,
        ),
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
