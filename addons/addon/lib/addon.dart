import 'package:flutter/widgets.dart';

abstract class Addon {
  Addon({
    required this.resourceDetailAddonView,
    required this.resourceTileAddonIcon,
    required this.resourceFormAddonView,
  });

  bool get isVisibleInResourceDetail;
  bool get isVisibleInResourceList;
  bool get isRequiredInNewResourceForm;

  Widget Function({
    required VoidCallback? onTap,
  }) resourceDetailAddonView;

  Widget Function({
    required VoidCallback? onTap,
  }) resourceTileAddonIcon;

  Widget Function() resourceFormAddonView;
}
