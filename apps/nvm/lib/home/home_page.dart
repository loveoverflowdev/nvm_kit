import 'package:flutter/material.dart';
import 'package:nvm/home/home_drawer.dart';
import 'package:template_parser/template_parser.dart';

class HomePage extends StatelessWidget {
  final TemplateComponent template;

  const HomePage({
    super.key,
    required this.template,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(
        pages: [],
      ),
      appBar: AppBar(
        title: Text(template.title),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          for (final app in template.apps)
            TextButton(
              onPressed: () {},
              child: Text(app.title),
            ),
        ],
      ),
    );
  }
}
