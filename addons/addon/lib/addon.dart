import 'package:flutter/widgets.dart';

abstract interface class Addon {
  bool get isVisibleInResourceDetail;
  bool get isVisibleInResourceList;
  bool get isRequiredInNewResourceForm;

  Widget resourceDetailAddonView({
    required String activeStructureCode,
    required String resourceId,
  });

  Widget resourceTileAddonIcon();

  Widget resourceFormAddonView();
}
