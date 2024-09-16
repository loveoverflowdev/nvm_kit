import 'package:addon/addon.dart';

abstract class CommentAddon implements Addon {
  @override
  int get priority => 2;

  @override
  bool get isRequiredInNewResourceForm => false;

  @override
  bool get isVisibleInResourceDetail => true;

  @override
  bool get isVisibleInResourceList => true;
}
