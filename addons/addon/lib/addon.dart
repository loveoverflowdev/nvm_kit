import 'package:flutter/widgets.dart';

abstract interface class Addon {
  bool get isVisibleInResourceDetail;
  bool get isVisibleInResourceList;
  bool get isRequiredInNewResourceForm;

  /// [priority] specify order in resource view
  int get priority;

  Widget resourceDetailAddonView({
    required String activeStructureCode,
    required String resourceId,
    required void Function() reload,
  });

  Widget resourceTileAddonIcon();

  Widget resourceFormAddonView();
}
