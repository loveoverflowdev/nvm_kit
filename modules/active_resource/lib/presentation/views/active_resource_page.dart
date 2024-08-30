import 'package:active_resource/active_resource.dart';
import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart' as template;

class ActiveResourcePage extends StatelessWidget {
  final template.ActivePageComponent pageComponent;

  const ActiveResourcePage({
    super.key,
    required this.pageComponent,
  });

  @override
  Widget build(BuildContext context) {
    return ActiveResourceListView(
      collectionComponent: pageComponent.collection,
    );
  }
}
