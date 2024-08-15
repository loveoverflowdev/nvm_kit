import 'package:active_resource/presentation/views/active_resource_list_view.dart';
import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart';

import 'active_resource_drawer.dart';

class ActiveResourceScaffold extends StatefulWidget {
  final Widget body;
  final List<PageComponent> pages;

  const ActiveResourceScaffold({
    super.key,
    required this.pages,
    required this.body,
  });

  @override
  State<ActiveResourceScaffold> createState() => _ActiveResourceScaffoldState();
}

class _ActiveResourceScaffoldState extends State<ActiveResourceScaffold> {
  late int _selectedIndex;

  PageComponent get _currentPage => widget.pages[_selectedIndex];

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentPage.title),
      ),
      drawer: ActiveResourceDrawer(
        pages: widget.pages,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          for (int index = 0; index < widget.pages.length; index++)
            ActiveResourceListView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
