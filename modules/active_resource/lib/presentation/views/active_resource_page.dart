import 'package:active_resource/active_resource.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_parser/template_parser.dart' as template;

class ActiveResourcePage extends StatelessWidget {
  final template.ActivePageComponent pageComponent;
  final String? resourceId;
  final String projectId;

  final void Function({
    required String? contextName,
    required String activeResourceId,
  })? onRouteDetailView;

  final void Function({
    required String? contextName,
  })? onRouteCreateForm;

  final void Function({
    required String? contextName,
  })? onRouteListView;

  const ActiveResourcePage({
    super.key,
    required this.resourceId,
    required this.projectId,
    required this.pageComponent,

    ///
    required this.onRouteDetailView,
    required this.onRouteListView,
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
          onRouteDetailView: onRouteDetailView,
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
          projectId: projectId,
          onRouteListView: onRouteListView,
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
