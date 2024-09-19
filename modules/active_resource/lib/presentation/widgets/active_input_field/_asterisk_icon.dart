import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AsteriskIcon extends StatelessWidget {
  const AsteriskIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSpacing.md),
      child: Text(
      '*',
      style: TextStyle(
        fontSize: 24,
        color: Theme.of(context).colorScheme.error,
      ),
      ),
    );
  }
}
