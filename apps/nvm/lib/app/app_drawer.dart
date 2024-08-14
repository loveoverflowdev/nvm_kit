import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_parser/template_parser.dart';

class AppDrawer extends StatelessWidget {
  final List<PageComponent> pages;

  const AppDrawer({
    super.key,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          for (final page in pages)
            ListTile(
              title: Text(page.title),
              onTap: () {
                GoRouter.of(context).pushNamed(page.contextName);
              },
            ),
        ],
      ),
    );
  }
}
