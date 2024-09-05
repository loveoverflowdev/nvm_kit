import 'package:comment_addon/comment_addon.dart';
import 'package:comment_addon/presentation/providers/comment_input_provider/comment_input_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentPrompt extends ConsumerWidget {
  final String activeStructureCode;
  final String resourceId;

  const CommentPrompt({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: use family for commentInputProvider
    final errorText = ref.watch(
      commentInputProvider.select(
        (form) => form.content.displayError?.message,
      ),
    );

    return TextField(
      onChanged: (value) {
        ref.read(commentInputProvider.notifier).setComment(value);
      },
      decoration: InputDecoration(
        errorText: errorText,
        hintText: 'Comment here ...',
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            final commentInput = ref.read(commentInputProvider.notifier);
            if (commentInput.isValid) {
              final payload = ref.read(commentInputProvider);
              ref
                  .read(
                    commentSubmitProvider(
                      activeStructureCode: activeStructureCode,
                      resourceId: resourceId,
                    ).notifier,
                  )
                  .submit(payload);
            } else {
              commentInput.makeDirty();
            }
          },
        ),
      ),
    );
  }
}
