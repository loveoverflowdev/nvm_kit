import 'package:go_router/go_router.dart';
import 'package:nvm_kit/nvm_kit.dart'
    show AppScreen, AppTemplate, RenderItem, SigninScaffold;
import 'package:flutter/material.dart';

GoRouter parseRouter(AppTemplate appTemplate) {
  List<GoRoute> routes = [
    GoRoute(
      path: '/signin',
      builder: (context, state) {
        return const SigninScaffold();
      },
    ),
  ];

  appTemplate.screens.forEach((screenName, screen) {
    routes.add(
      GoRoute(
        path: '/$screenName',
        builder: (context, state) {
          return DynamicScreen(screen: screen);
        },
      ),
    );
  });

  String initialLocation = '/${appTemplate.index}';

  return GoRouter(
    initialLocation: initialLocation,
    routes: routes,
  );
}

class DynamicScreen extends StatelessWidget {
  final AppScreen screen;

  const DynamicScreen({super.key, required this.screen});

  Widget _buildWidget(String widget) {
    // TODO: Update content
    return Text("widget type: $widget");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final item in screen.renders ?? <RenderItem>[]) ...[
            Text(
              item.title ?? '',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildWidget(item.widget ?? ''),
            const Divider(),
          ]
        ],
      ),
      // body: ListView.builder(
      //   itemCount: screen.renders?.length ?? 0,
      //   itemBuilder: (context, index) {
      //     final renderItem = screen.renders?[index];
      //     return ListTile(
      //       leading: Text(renderItem?.title ?? ''),
      //       title: ,
      //     );
      //   },
      // ),
    );
  }
}
