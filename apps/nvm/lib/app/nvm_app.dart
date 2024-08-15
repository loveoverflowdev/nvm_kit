import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/router.dart';
import 'package:nvm/template_repository.dart';

class NvmApp extends StatefulWidget {
  const NvmApp({super.key});

  @override
  State<NvmApp> createState() => _NvmAppState();
}

class _NvmAppState extends State<NvmApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    final template = TemplateRepository.example().getTemplate();
    _router = RouterBuilder(
      template: template,
    ).build();
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        title: 'Task Manager',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
