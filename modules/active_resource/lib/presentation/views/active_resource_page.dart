import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template_parser/template_parser.dart' as template;

import 'active_resource_collection_view.dart';
import 'active_resource_create_form_view.dart';
import 'active_resource_detail_view.dart';
import 'active_resource_update_form_view.dart';

// TODO: Chia tách page theo loại
class ActiveResourcePage extends StatelessWidget {
  final template.ActivePageComponent pageComponent;

  /// [resourceId] used for detail page and update page
  final String? resourceId;

  /// [setState] used for list page
  final bool? setState;

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

  final void Function({
    required String? contextName,
    required String activeResourceId,
  })? onRouteUpdateForm;

  const ActiveResourcePage({
    super.key,
    required this.setState,
    required this.resourceId,
    required this.projectId,
    required this.pageComponent,

    ///
    required this.onRouteDetailView,
    required this.onRouteListView,
    required this.onRouteCreateForm,
    required this.onRouteUpdateForm,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = () {
      if (pageComponent.view is template.ActiveCollectionComponent) {
        return ActiveResourceCollectionView(
          setState: setState,
          projectId: projectId,
          collectionComponent:
              pageComponent.view as template.ActiveCollectionComponent,
          onRouteDetailView: onRouteDetailView,
          onRouteCreateForm: onRouteCreateForm,
          onRouteUpdateForm: onRouteUpdateForm,
        );
      } else if (pageComponent.view is template.ActiveDetailComponent) {
        return ActiveResourceDetailView(
          detailComponent: pageComponent.view as template.ActiveDetailComponent,
          resourceId: resourceId!, 
          onRouteUpdateForm: onRouteUpdateForm,
        );
      } else if (pageComponent.view is template.ActiveCreateFormComponent) {
        return ActiveResourceCreateFormView(
          formComponent: pageComponent.view as template.ActiveCreateFormComponent,
          projectId: projectId,
          onRouteListView: onRouteListView,
        );
      } else if (pageComponent.view is template.ActiveUpdateFormComponent)  {
        return ActiveResourceUpdateFormView(
          resourceId: resourceId!,
          formComponent: pageComponent.view as template.ActiveUpdateFormComponent,
          projectId: projectId,
          onRouteListView: onRouteListView,
        ); 
      }
      return const Placeholder(
        child: Text('Unimplemented Active Component'),
      );
    }();

    final Widget? leading = (pageComponent.view is template.ActiveCreateFormComponent)
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
