import 'package:addon/addon.dart';

abstract class RolesBoardAddon implements Addon {
  @override
  int get priority => 1;

  @override
  bool get isVisibleInResourceDetail => true;

  @override
  bool get isVisibleInResourceList => true;

  @override
  bool get isRequiredInNewResourceForm => false;
}
