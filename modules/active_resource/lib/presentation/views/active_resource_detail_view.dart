import 'package:comment_addon/comment_addon.dart' as comment;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_parser/template_parser.dart' as template;

class ActiveResourceDetailView extends ConsumerStatefulWidget {
  final template.ActiveDetailComponent detailComponent;
  final String resourceId;

  const ActiveResourceDetailView({
    super.key,
    required this.detailComponent,
    required this.resourceId,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ActiveResourceDetailViewState();
}

class _ActiveResourceDetailViewState
    extends ConsumerState<ActiveResourceDetailView> {
  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   ref.read(comment.commentListProvider(
    //     activeStructureCode: widget.activeStructureCode,
    //     resourceId: widget.resourceId,
    //   ));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: comment.CommentsPreview(
              activeStructureCode:
                  widget.detailComponent.tile.activeStructureCode,
              resourceId: widget.resourceId,
            ),
          )
        ],
      ),
    );
  }
}
