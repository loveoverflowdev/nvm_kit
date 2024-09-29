import 'package:flutter/material.dart';

class TabBarLayout extends StatelessWidget {
  const TabBarLayout({
    required this.navigationIndex,
    required this.onDestination,
    required this.destinations,
    required this.child,
    super.key,
    this.appBarTitle,
  });

  final Widget child;
  final int navigationIndex;
  final ValueChanged<int> onDestination;
  final List<TabBarDestination> destinations;
  final Widget? appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: DefaultTabController(
            length: destinations.length,
            initialIndex: navigationIndex,
            child: Scaffold(
              appBar: AppBar(
                title: appBarTitle,
                bottom: TabBar(
                  isScrollable: true,
                  onTap: onDestination,
                  tabs: destinations
                      .map(
                        (d) => Tab(
                          text: d.label,
                        ),
                      )
                      .toList(),
                ),
              ),
              body: child,
            ),
          ),
        ),
      ],
    );
  }
}

class TabBarDestination {
  const TabBarDestination({
    required this.label,
  });

  final String label;

  Tab toTab() {
    return Tab(
      text: label,
    );
  }
}
