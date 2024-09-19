import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

Future<T?> showAppModelBottomSheet<T>({
  required BuildContext context,
  required Widget Function(BuildContext) builder,
  bool isScrollControlled = true,
  bool useRootNavigator = true,
  bool useSafeArea = true,
  ShapeBorder? shape,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: isScrollControlled,
    useRootNavigator: useRootNavigator,
    useSafeArea: useSafeArea,
    builder: builder,
    clipBehavior: Clip.hardEdge,
    shape: shape ??
        RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSpacing.lg),
          ),
        ),
  );
}
