import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NotificationCreatingView extends ConsumerStatefulWidget {
  const NotificationCreatingView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationCreatingViewState();
}

class _NotificationCreatingViewState
    extends ConsumerState<NotificationCreatingView> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Text('NotificationCreatingView'),
    );
  }
}
