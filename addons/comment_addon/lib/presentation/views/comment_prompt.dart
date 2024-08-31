import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentPrompt extends ConsumerWidget {
  const CommentPrompt({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Comment here ...',
      ),
    );
  }
}
