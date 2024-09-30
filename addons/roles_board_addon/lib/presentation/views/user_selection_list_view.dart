import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/domain.dart';

import '../providers.dart';

class UserSelectionListView extends ConsumerStatefulWidget {
  const UserSelectionListView({
    super.key,
    required this.onResourceSelected,
    this.initialUserId,
  });

  //
  final String? initialUserId;

  /// return selected resource id
  final void Function({
    required String userId,
  }) onResourceSelected;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserSelectionListViewState();
}

class _UserSelectionListViewState extends ConsumerState<UserSelectionListView> {
  late String? _selectedUserId;

  @override
  void initState() {
    super.initState();
    _selectedUserId = widget.initialUserId;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(
            userListProvider.notifier,
          )
          .loadUserList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final userList = ref.watch(userListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select one user'),
        leading: Navigator.canPop(context)
            ? IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear),
              )
            : null,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: userList.when(
              data: (data) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final user = data[index];
                    return CheckboxListTile(
                      value: _selectedUserId == user.id,
                      title: Text(user.fullName),
                      subtitle: Text(user.username),
                      onChanged: (value) {
                        if (value == true) {
                          setState(() {
                            _selectedUserId = user.id;
                          });
                        }
                      },
                    );
                  },
                );
              },
              error: (error, stackTrace) => AppErrorWidget(
                error,
                stackTrace: stackTrace,
              ),
              loading: () => const AppCircularLoadingWidget(),
            ),
          ),
          //
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: ElevatedButton(
              onPressed: () {
                if (_selectedUserId != null) {
                  widget.onResourceSelected(
                    userId: _selectedUserId!,
                  );
                }

                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ),
        ],
      ),
    );
  }
}
