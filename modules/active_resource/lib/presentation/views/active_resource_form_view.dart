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
    return Container();
  }
}
