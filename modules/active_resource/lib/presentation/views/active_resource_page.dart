import 'package:active_resource/active_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:template_parser/template_parser.dart' as template;

class ActiveResourcePage extends StatelessWidget {
  final void Function(String?, String)? onViewDetail;
  final template.ActivePageComponent pageComponent;
  final void Function(String?)? onRouteCreateForm;
  final String? resourceId;
  final String? projectId;

  const ActiveResourcePage({
    super.key,
    required this.pageComponent,
    required this.onViewDetail,
    required this.resourceId,
    required this.projectId,
    required this.onRouteCreateForm,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = () {
      if (pageComponent.view is template.ActiveCollectionComponent) {
        return ActiveResourceCollectionView(
          projectId: projectId,
          collectionComponent:
              pageComponent.view as template.ActiveCollectionComponent,
          onViewDetail: onViewDetail,
          onRouteCreateForm: onRouteCreateForm,
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

    final Widget? leading = (pageComponent.view is template.ActiveFormComponent)
        ? IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              context.pop();
            },
          )
        : null;

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        appBar: AppBar(
          title: Text(pageComponent.title ?? ''),
          leading: leading,
        ),
        body: child,
      ),
    );
  }
}
