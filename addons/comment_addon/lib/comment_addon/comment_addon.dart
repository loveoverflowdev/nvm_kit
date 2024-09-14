import 'package:addon/addon.dart';
import 'package:flutter/material.dart';

final class CommentAddon extends Addon {
  CommentAddon({
    required super.resourceDetailAddonView,
    required super.resourceFormAddonView,
    required super.resourceTileAddonIcon,
  });

  @override
  bool get isRequiredInNewResourceForm => false;

  @override
  bool get isVisibleInResourceDetail => true;

  @override
  bool get isVisibleInResourceList => true;
}
