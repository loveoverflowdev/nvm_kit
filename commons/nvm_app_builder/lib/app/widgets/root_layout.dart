import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootLayout extends StatelessWidget {
  const RootLayout({
    super.key,
    required this.navigationShell,
    required this.children,
    required this.destinations,
  });

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  /// Body, i.e. the container for the branch Navigators.
  final List<Widget> children;
  final List<RootDestination> destinations;

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
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        children: [
          Column(
            children: [
              Expanded(
                child: NavigationRail(
                  groupAlignment: 0,
                  destinations: destinations
                      .map((d) => d.toNavigationRailDestination())
                      .toList(),
                  selectedIndex: navigationShell.currentIndex,
                  labelType: NavigationRailLabelType.selected,
                  onDestinationSelected: navigationShell.goBranch,
                ),
              )
            ],
          ),
          Expanded(
            child: Scaffold(
              body: children[navigationShell.currentIndex],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMobile(BuildContext context) {
    return Scaffold(
      body: children[navigationShell.currentIndex],
      bottomNavigationBar: NavigationBar(
        destinations:
            destinations.map((e) => e.toNavigationDestination()).toList(),
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
      ),
    );
  }
}

class RootDestination {
  const RootDestination({
    required this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
  });

  final String label;
  final IconData selectedIcon, unselectedIcon;

  NavigationRailDestination toNavigationRailDestination() {
    return NavigationRailDestination(
      icon: Icon(unselectedIcon),
      selectedIcon: Icon(selectedIcon),
      label: Text(label),
    );
  }

  NavigationDestination toNavigationDestination() {
    return NavigationDestination(
      icon: Icon(unselectedIcon),
      selectedIcon: Icon(selectedIcon),
      label: label,
    );
  }
}
