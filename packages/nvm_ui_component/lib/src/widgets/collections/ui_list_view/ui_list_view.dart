import 'package:flutter/material.dart';
import 'package:nvm_ui_component/nvm_ui_component.dart' show AppSpacing;

class UiListView extends StatelessWidget {
  final int? itemCount;
  final UiListTile? Function(BuildContext, int) itemBuilder;

  const UiListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}

class UiListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? bottom;
  final void Function()? onTap;

  const UiListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.onTap,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Column(
          children: [
            Flexible(child: Text(title)),
            if (subtitle != null) ...[
              const SizedBox(height: AppSpacing.sm),
              Text(subtitle ?? ''),
            ],
            if (bottom != null) ...[
              const SizedBox(height: AppSpacing.sm),
              bottom!,
            ],
          ],
        ),
      ),
    );
  }
}
