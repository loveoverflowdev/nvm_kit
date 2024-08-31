import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart' as template;
import 'active_resource_collection_view.dart';

class ActiveResourcePage extends StatelessWidget {
  final template.ActivePageComponent pageComponent;

  const ActiveResourcePage({
    super.key,
    required this.pageComponent,
  });

  @override
  Widget build(BuildContext context) {
    return ActiveResourceCollectionView(
      collectionComponent: pageComponent.collection,
    );
  }
}
