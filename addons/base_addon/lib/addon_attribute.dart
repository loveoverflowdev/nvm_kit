import 'package:flutter/widgets.dart';

abstract class AddonAttribute {
  AddonAttribute();

  bool get isVisibleInResourceDetail;
  bool get isVisibleInResourceList;
  bool get isRequiredInNewResourceForm;

  Widget resourceDetailAddonView({
    required VoidCallback? onTap,
  });
  Widget resourceTileAddonIcon({
    required VoidCallback? onTap,
  });
  Widget resourceFormAddonView();
}

/*
abstract interface class ResourceDetailAddonView {

}

abstract interface class ResourceTileAddonIcon {

}

abstract interface class ResourceFormAddonView {

}

*/