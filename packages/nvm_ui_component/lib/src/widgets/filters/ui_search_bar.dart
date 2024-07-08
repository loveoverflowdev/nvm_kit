import 'package:flutter/material.dart';

class UISearchBar extends StatelessWidget {
  const UISearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      barHintText: 'Search data',
      suggestionsBuilder: (context, controller) {
        if (controller.text.isEmpty) {
          return <Widget>[
            const Center(
              child:
                  Text('No search data', style: TextStyle(color: Colors.grey)),
            )
          ];
        }
        return [];
      },
    );
  }
}
