import 'package:active_resource/presentation/providers/user_providers/user_list_provider.dart';
import 'package:alchemist_query/alchemist_query.dart' show RequestField;
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserSelectionListView extends ConsumerStatefulWidget {
  const UserSelectionListView({
    super.key,
    required this.titleKey,
    required this.subtitleKey,
    required this.onResourceSelected,
    this.initialUserId,
  });

  final String titleKey;
  final String? subtitleKey;
  //
  final String? initialUserId;

  /// return selected resource id
  final void Function({
    required String userId,
    required String resourceTitle,
  }) onResourceSelected;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserSelectionListViewState();
}

class _UserSelectionListViewState extends ConsumerState<UserSelectionListView> {
  String _parseRequestField() {
    return RequestField.children([
      RequestField.name('id'),
      RequestField.name('username'),
      RequestField.name('fullName'),
      RequestField.name('thumbnailAvatar'),
    ]).build();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(
            userListProvider.notifier,
          )
          .loadUserList(
            requestField: _parseRequestField(),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final userList = ref.watch(userListProvider);
    return userList.when(
      data: (data) {
        return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final user = data[index];
              return ListTile(
                title: Text(user.fullName),
                subtitle: Text(user.username),
                onTap: () {
                  widget.onResourceSelected(
                    userId: user.id,
                    resourceTitle: user.fullName,
                  );
                },
              );
            });
      },
      error: (error, stackTrace) => AppErrorWidget(
        error,
        stackTrace: stackTrace,
      ),
      loading: () => const AppCircularLoadingWidget(),
    );
  }
}
