import 'package:addon/addon.dart';

abstract class CommentAddon implements Addon {
  @override
  bool get isRequiredInNewResourceForm => false;

  @override
  bool get isVisibleInResourceDetail => true;

  @override
  bool get isVisibleInResourceList => true;
}
