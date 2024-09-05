import 'package:active_resource/active_resource.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_parser/template_parser.dart' as template;

class ActiveResourceFormView extends ConsumerStatefulWidget {
  final template.ActiveFormComponent formComponent;

  const ActiveResourceFormView({
    super.key,
    required this.formComponent,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceFormViewState();
}

class _ActiveResourceFormViewState
    extends ConsumerState<ActiveResourceFormView> {
  @override
  Widget build(BuildContext context) {
    final activeStructure = ref.watch(
      activeStructureProvider(
        activeStructureCode: widget.formComponent.activeStructureCode,
      ),
    );
    // TODO: on create form
    return activeStructure.when(
      data: (data) {
        return ListView(
          children: [],
        );
      },
      error: (error, stackTrace) =>
          AppErrorWidget(error, stackTrace: stackTrace),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
