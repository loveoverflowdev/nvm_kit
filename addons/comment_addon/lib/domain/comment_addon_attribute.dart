import 'package:base_addon/base_addon.dart';
import 'package:flutter/material.dart';

final class CommentAddonAttribute extends AddonAttribute {
  @override
  bool get isRequiredInNewResourceForm => false;

  @override
  bool get isVisibleInResourceDetail => true;

  @override
  bool get isVisibleInResourceList => true;

  @override
  Widget resourceDetailAddonView({
    required VoidCallback? onTap,
  }) {
    // TODO: implement resourceDetailAddonView
    throw UnimplementedError();
  }

  @override
  Widget resourceFormAddonView() {
    return const SizedBox.shrink();
  }

  @override
  Widget resourceTileAddonIcon({
    required VoidCallback? onTap,
  }) {
    return IconButton(
      onPressed: onTap, 
      icon: Icon(Icons.comment),
    );
  }
}
