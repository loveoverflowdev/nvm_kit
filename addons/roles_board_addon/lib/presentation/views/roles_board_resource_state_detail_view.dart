import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/domain.dart';

import '../providers.dart' show rolesBoardListProvider;

class RolesBoardResourceStateDetailView extends ConsumerStatefulWidget {
  final RolesBoardResourceState rolesBoardResourceState;

  const RolesBoardResourceStateDetailView({
    super.key,
    required this.rolesBoardResourceState,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RolesBoardResourceStateDetailViewState();
}

class _RolesBoardResourceStateDetailViewState
    extends ConsumerState<RolesBoardResourceStateDetailView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(rolesBoardListProvider.notifier).loadRolesBoardList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progresses & Roles'),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.clear),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            Card(
              color: Theme.of(context).colorScheme.surfaceVariant,
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.md),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Summary',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const Divider(),
                    _Label(
                      label: 'Average progress',
                      value:
                          '${widget.rolesBoardResourceState.averageProgress.round()} %',
                    ),
                    _Label(
                      label: 'Final status',
                      value: widget
                          .rolesBoardResourceState.finalStatus.description,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSpacing.md,
            ),
            Flexible(
              child: Card(
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.md),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                        ),
                        child: Text(
                          'Progress of roles',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      const Divider(),
                      Flexible(
                        child: Consumer(
                          builder: (_, WidgetRef ref, __) {
                            final rolesBoardListResult = ref.watch(
                              rolesBoardListProvider,
                            );
                            return rolesBoardListResult.when(
                              data: (rolesBoardList) {
                                final index = rolesBoardList.indexWhere((e) =>
                                    e.id ==
                                    widget.rolesBoardResourceState
                                        .boardRoleId);
                                if (index == -1) {
                                  return const SizedBox.shrink();
                                }

                                final rolesBoardResourceState =
                                    widget.rolesBoardResourceState;
                                final rolesBoard = rolesBoardList[index];
                                return ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: rolesBoardResourceState
                                      .roleStates.length,
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return const Divider();
                                  },
                                  itemBuilder: (context, index) {
                                    final roleState = rolesBoardResourceState
                                        .roleStates[index];
                                    final role = rolesBoard.roles.firstWhere(
                                      (e) => e.id == roleState.roleId,
                                    );
                                    return InkWell(
                                      onTap: () {},
                                      borderRadius: BorderRadius.circular(
                                        AppSpacing.sm,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: AppSpacing.md,
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    role.shortName,
                                                  ),
                                                  Text(
                                                    roleState
                                                        .status.description,
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Text(
                                                    "${roleState.progress.round()} %",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: AppSpacing.sm,
                                            ),
                                            const Icon(Icons.edit),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              error: (error, stackTrace) => AppErrorWidget(
                                error.toString(),
                              ),
                              loading: () => const AppCircularLoadingWidget(),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  final String label;
  final String value;

  const _Label({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$label:',
          // cstyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: AppSpacing.sm),
        Text(
          value,
          style: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
