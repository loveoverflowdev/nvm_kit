import 'package:app_ui/widgets/app_circular_loading.dart';
import 'package:comment_addon/comment_addon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentPrompt extends ConsumerWidget {
  final String activeStructureCode;
  final String resourceId;
  final String providerKey;
  final void Function() onCreated;

  CommentPrompt({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
    required this.onCreated,
    required this.providerKey,
  });

  late final _submitProvider = commentSubmitProvider(
    activeStructureCode: activeStructureCode,
    resourceId: resourceId,
    key: providerKey,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      _submitProvider,
      (previous, current) {
        current.whenData((_) {
          onCreated();
        });
      },
    );

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
            final submitStatus = ref.watch(_submitProvider);
            return Visibility(
              visible: !submitStatus.isLoading,
              replacement: const AppCircularLoadingWidget(
                size: 24,
              ),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () async {
                  final commentInput = ref.read(commentInputProvider.notifier);
                  if (commentInput.isValid) {
                    final payload = ref.read(commentInputProvider);
                    ref
                        .read(
                          _submitProvider.notifier,
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
