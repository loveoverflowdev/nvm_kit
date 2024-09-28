import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/roles_board_addon.dart';

class RolesBoardListView extends ConsumerStatefulWidget {
  final RolesBoardSelection? initialSelection;
  final void Function(RolesBoardSelection?, String? rolesBoardName)? onSubmited;

  const RolesBoardListView({
    super.key,
    required this.initialSelection,
    required this.onSubmited,
  });

  @override
  ConsumerState<RolesBoardListView> createState() => _RolesBoardListViewState();
}

class _RolesBoardListViewState extends ConsumerState<RolesBoardListView> {
  late RolesBoardSelection? _rolesBoardSelection;
  late String? _rolesBoardName;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _loadRolesBoardList(),
    );
    _rolesBoardSelection = widget.initialSelection;
  }

  void _loadRolesBoardList() {
    ref.read(rolesBoardListProvider.notifier).loadRolesBoardList();
  }

  void _onSelectionChanged(
    bool? value, {
    required RolesBoard rolesBoard,
  }) {
    if (value == true) {
      _rolesBoardName = rolesBoard.boardName;
      _rolesBoardSelection = RolesBoardSelection(
        rolesBoardId: rolesBoard.id,
        roleIdList: [],
      );
    } else {
      _rolesBoardName = null;
      _rolesBoardSelection = null;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final result = ref.watch(rolesBoardListProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: RefreshIndicator(
            onRefresh: () async => _loadRolesBoardList(),
            child: result.when(
              error: (error, stackTrace) => AppErrorWidget(
                error,
                stackTrace: stackTrace,
              ),
              loading: () => const AppCircularLoadingWidget(),
              data: (rolesBoardList) => ListView.separated(
                itemCount: rolesBoardList.length,
                itemBuilder: (context, index) {
                  final rolesBoard = rolesBoardList[index];

                  final isRolesBoardSelected =
                      _rolesBoardSelection?.rolesBoardId == rolesBoard.id;

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      clipBehavior: Clip.hardEdge,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CheckboxListTile(
                            value: isRolesBoardSelected,
                            onChanged: (bool? value) {
                              _onSelectionChanged(
                                value,
                                rolesBoard: rolesBoard,
                              );
                            },
                            title: Text(rolesBoard.boardName),
                            subtitle: rolesBoard.description.isNotEmpty
                                ? Text(rolesBoard.description)
                                : null,
                          ),
                          Flexible(
                            child: Visibility(
                              visible: isRolesBoardSelected,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSpacing.lg),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Divider(),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: AppSpacing.md),
                                      child: Text(
                                        'Select roles',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    ..._roleList(rolesBoard),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AppSpacing.lg,
        ),
        Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: ElevatedButton(
            onPressed: () {
              widget.onSubmited?.call(
                _rolesBoardSelection,
                _rolesBoardSelection == null ? null : _rolesBoardName,
              );
              Navigator.pop(context);
            },
            child: const Text('Done'),
          ),
        ),
      ],
    );
  }

  List<Widget> _roleList(RolesBoard rolesBoard) {
    return [
      for (final role in rolesBoard.roles)
        CheckboxListTile(
          title: Text(
            role.name,
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
          subtitle: role.description.isNotEmpty ? Text(role.description) : null,
          value: _rolesBoardSelection?.roleIdList.contains(role.id) == true,
          onChanged: (value) {
            if (value == true) {
              _rolesBoardSelection?.roleIdList.add(role.id);
            } else {
              _rolesBoardSelection?.roleIdList.remove(role.id);
            }

            setState(() {});
          },
        ),
    ];
  }
}
