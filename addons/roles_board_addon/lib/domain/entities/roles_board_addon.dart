import 'package:addon/addon.dart';
import 'package:roles_board_addon/domain.dart' show RolesBoardResourceState;

abstract class RolesBoardAddon implements Addon {
  @override
  int get priority => 1;

  @override
  bool get isVisibleInResourceDetail => true;

  @override
  bool get isVisibleInResourceList => true;

  @override
  bool get isRequiredInNewResourceForm => false;

  RolesBoardResourceState getResourceState();
}
