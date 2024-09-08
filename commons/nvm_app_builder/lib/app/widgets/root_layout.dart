import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootLayout extends StatelessWidget {
  const RootLayout({
    super.key,
    required this.navigationIndex,
    required this.onDestination,
    required this.destinations,
    required this.child,
  });

  final Widget child;
  final int navigationIndex;
  final ValueChanged<int> onDestination;
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
                  selectedIndex: navigationIndex,
                  labelType: NavigationRailLabelType.selected,
                  onDestinationSelected: onDestination,
                ),
              )
            ],
          ),
          Expanded(child: Scaffold(body: child)),
        ],
      ),
    );
  }

  Widget buildMobile(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       const DrawerHeader(child: Text('NVM')),
      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: destinations.length,
      //           itemBuilder: (context, index) {
      //             final destination = destinations[index];
      //             final selected = index == navigationIndex;
      //             return ListTile(
      //               title: Text(destination.label),
      //               leading: Icon(selected
      //                   ? destination.selectedIcon
      //                   : destination.unselectedIcon),
      //               selected: selected,
      //               onTap: () {
      //                 onDestination(index);
      //                 Navigator.pop(context);
      //               },
      //             );
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: child,
      bottomNavigationBar: NavigationBar(
        destinations:
            destinations.map((e) => e.toNavigationDestination()).toList(),
        selectedIndex: navigationIndex,
        onDestinationSelected: onDestination,
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
