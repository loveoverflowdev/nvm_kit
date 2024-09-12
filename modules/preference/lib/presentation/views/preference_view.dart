import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';
import '../widgets.dart';

class PreferenceView extends StatelessWidget {
  const PreferenceView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Consumer(
            builder: (_, WidgetRef ref, __) {
              final user = ref.watch(currentUserProvider);
              return user.when(
                data: (data) => Row(
                  children: [
                    UserAvatar(
                      name: data.username,
                      thumbnailAvatarUrl: data.thumbnailAvatarUrl,
                    ),
                    const SizedBox(
                      width: AppSpacing.lg,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            data.fullName,
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(data.username),
                        ],
                      ),
                    ),
                  ],
                ),
                loading: () => const AppCircularLoadingWidget(),
                error: (error, stackTrace) => AppErrorWidget(
                  error,
                  stackTrace: stackTrace,
                ),
              );
            },
          ),
        ),
        const Divider(),
        ListTile(
          title: const Text('Sign out'),
          trailing: const Icon(Icons.logout),
          onTap: () {},
        )
      ],
    );
  }
}
