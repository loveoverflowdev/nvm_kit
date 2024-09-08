import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabBarLayout extends StatelessWidget {
  const TabBarLayout({
    super.key,
    required this.navigationIndex,
    required this.onDestination,
    required this.destinations,
    required this.child,
  });

  final Widget child;
  final int navigationIndex;
  final ValueChanged<int> onDestination;
  final List<TabBarDestination> destinations;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isTablet = constraints.maxWidth >= 860;
        if (isTablet) {
          return buildTablet(context);
        } else {
          return buildMobile(context);
        }
      },
    );
  }

  Widget buildTablet(BuildContext context) {
    return DefaultTabController(
      length: destinations.length,
      initialIndex: navigationIndex,
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              onTap: onDestination,
              tabs: destinations
                  .map(
                    (d) => Tab(text: d.label),
                  )
                  .toList(),
            ),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMobile(BuildContext context) {
    return DefaultTabController(
      length: destinations.length,
      initialIndex: navigationIndex,
      child: Scaffold(
        appBar: AppBar(
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
        // floatingActionButton: buildFab(context),
      ),
    );
  }

  Widget? buildFab(BuildContext context, {bool elevated = true}) {
    final router = GoRouter.of(context);
    if (router.routerDelegate.currentConfiguration.fullPath != '/') return null;
    return FloatingActionButton(
      elevation: elevated ? null : 0,
      child: const Icon(Icons.add),
      onPressed: () {},
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
