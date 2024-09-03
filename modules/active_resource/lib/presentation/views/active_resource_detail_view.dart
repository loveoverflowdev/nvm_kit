import 'package:comment_addon/comment_addon.dart' as comment;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ActiveResourceDetailView extends ConsumerStatefulWidget {
  final String activeStructureCode;
  final String resourceId;

  const ActiveResourceDetailView({
    super.key,
    required this.activeStructureCode,
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
          Divider(),
          Flexible(
            child: comment.CommentsPreview(
              activeStructureCode: widget.activeStructureCode,
              resourceId: widget.resourceId,
            ),
          )
        ],
      ),
    );
  }
}
