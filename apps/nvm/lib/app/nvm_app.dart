import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/router.dart';
import 'package:nvm/template_repository.dart';

import 'theme.dart';

class NvmApp extends StatefulWidget {
  const NvmApp({super.key});

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
    ).build();

    _theme = const BasilTheme().toThemeData();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        title: 'NVM',
        theme: _theme,
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
