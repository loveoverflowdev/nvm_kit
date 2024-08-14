import 'package:active_resource/presentation/views/active_resource_list_view.dart';
import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart';

class ActiveResourceScaffold extends StatelessWidget {
  final PageComponent page;

  const ActiveResourceScaffold({
    super.key, 
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(page.title),
      ),
      body: const ActiveResourceListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
