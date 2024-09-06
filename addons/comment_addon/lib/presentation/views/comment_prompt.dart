import 'package:app_ui/widgets/app_circular_loading.dart';
import 'package:comment_addon/comment_addon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentPrompt extends ConsumerWidget {
  final String activeStructureCode;
  final String resourceId;
  final void Function() onCreated;

  const CommentPrompt({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
    required this.onCreated,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: use family for commentInputProvider
    ref.listen(
      commentSubmitProvider(
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
      ),
      (previous, current) {
        current.whenData((_) {
          Future.delayed(Duration(milliseconds: 100), () {
            onCreated();
          });
        });
      },
    );

    // final errorText = ref.watch(
    //   commentInputProvider.select(
    //     (form) => form.content.displayError?.message,
    //   ),
    // );

    return TextField(
      onChanged: (value) {
        ref.read(commentInputProvider.notifier).setComment(value);
      },
      decoration: InputDecoration(
        // errorText: errorText,
        hintText: 'Comment here ...',
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 48,
          maxWidth: 48,
        ),
        suffixIcon: Consumer(
          builder: (context, ref, child) {
            final submitStatus = ref.watch(commentSubmitProvider(
              activeStructureCode: activeStructureCode,
              resourceId: resourceId,
            ));
            return Visibility(
              visible: !submitStatus.isLoading,
              replacement: const AppCircularLoadingWidget(
                size: 24,
              ),
              child: IconButton(
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
            );
          },
        ),
      ),
    );
  }
}
