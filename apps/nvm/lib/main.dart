import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nvm/app.dart';

import 'template_repository/template_repository.dart';

void main() {
  runApp(const NvmApp());
}

class NvmApp extends StatefulWidget {
  const NvmApp({super.key});

  @override
  State<NvmApp> createState() => _NvmAppState();
}

class _NvmAppState extends State<NvmApp> {
  late final GoRouter? _router;

  @override
  void initState() {
    super.initState();
    TemplateRepository.example().getTemplate().then((template) {
      setState(() {
        _router = RouterBuilder(
          template: template,
        ).build();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'NVM',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
