import 'package:active_resource/active_resource.dart';
import 'package:flutter/material.dart';
import 'package:template_parser/template_parser.dart' as template;

class ActiveResourcePage extends StatelessWidget {
  final void Function(String?, String)? onViewDetail;
  final template.ActivePageComponent pageComponent;
  final String? resourceId;

  const ActiveResourcePage({
    super.key,
    required this.pageComponent,
    required this.onViewDetail,
    required this.resourceId,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = () {
      if (pageComponent.view is template.ActiveCollectionComponent) {
        return ActiveResourceCollectionView(
          collectionComponent:
              pageComponent.view as template.ActiveCollectionComponent,
          onViewDetail: onViewDetail,
        );
      } else if (pageComponent.view is template.ActiveDetailComponent) {
        return ActiveResourceDetailView(
          detailComponent: pageComponent.view as template.ActiveDetailComponent,
          resourceId: resourceId!,
        );
      } else if (pageComponent.view is template.ActiveFormComponent) {
        return ActiveResourceFormView(
          formComponent: pageComponent.view as template.ActiveFormComponent,
        );
      }
      return const Placeholder(
        child: Text('Unimplemented Active Component'),
      );
    }();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: child,
    );
  }
}
