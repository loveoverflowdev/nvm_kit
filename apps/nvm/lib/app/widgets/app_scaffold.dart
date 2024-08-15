import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart';

import '../widgets.dart';

class AppScaffold extends StatefulWidget {
  final AppComponent app;
  final Widget activeResourceScaffoldBody;

  const AppScaffold({
    super.key,
    required this.app,
    required this.activeResourceScaffoldBody,
  });

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.app.title),
      ),
      drawer: ActiveResourceDrawer(
        pages: widget.app.pages,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          widget.activeResourceScaffoldBody,
          // ActiveResourceScaffold(
          //   pages: widget.app.pages,
          //   body: widget.activeResourceScaffoldBody,
          // ),
          NotificationScaffold(),
          PreferenceScaffold(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications_sharp),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Preference',
          ),
        ],
      ),
    );
  }
}
