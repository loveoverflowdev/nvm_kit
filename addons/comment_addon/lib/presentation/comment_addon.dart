import 'package:comment_addon/domain.dart';
import 'package:flutter/material.dart';

import 'views.dart';

final commentAddon = _CommentAddonImpl();

final class _CommentAddonImpl extends CommentAddon {
  
  @override
  Widget resourceDetailAddonView({
    required String activeStructureCode,
    required String resourceId,
  }) {
    return CommentsPreview(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    );
  }

  @override
  Widget resourceFormAddonView() {
    // TODO: implement resourceFormAddonView
    throw UnimplementedError();
  }

  @override
  Widget resourceTileAddonIcon() {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.comment),
    );
  }
}
