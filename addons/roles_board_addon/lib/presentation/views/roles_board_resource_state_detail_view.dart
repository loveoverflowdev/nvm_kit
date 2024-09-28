import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/domain.dart';

import '../providers.dart'
    show
        rolesBoardListProvider,
        rolesBoardResourceStateNotifierProvider,
        rolesBoardUpdateResourceRoleProgressProvider,
        rolesBoardUpdateResourceRoleStatusProvider;
import '../widgets.dart';

class RolesBoardResourceStateDetailView extends ConsumerStatefulWidget {
  final String activeStructureCode;
  final String resourceId;
  final RolesBoardResourceState rolesBoardResourceState;
  final void Function() onUpdated;

  const RolesBoardResourceStateDetailView({
    super.key,
    required this.activeStructureCode,
    required this.resourceId,
    required this.rolesBoardResourceState,
    required this.onUpdated,
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
                      value: widget.rolesBoardResourceState.finalStatus.title,
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
                                final index = rolesBoardList.indexWhere(
                                  (e) =>
                                      e.id ==
                                      widget
                                          .rolesBoardResourceState.boardRoleId,
                                );

                                if (index == -1) {
                                  return const SizedBox.shrink();
                                }

                                final rolesBoardResourceStateResult = ref.watch(
                                  rolesBoardResourceStateNotifierProvider(
                                    resourceId: widget.resourceId,
                                    addonInstanceCode: widget
                                        .rolesBoardResourceState
                                        .addonInstanceCode,
                                  ),
                                );

                                print('################ initState_2');
                                print(widget.resourceId);
                                print(widget
                                    .rolesBoardResourceState.addonInstanceCode);
                                print('################ initState_2');

                                if (rolesBoardResourceStateResult.value ==
                                    null) {
                                  return const AppCircularLoadingWidget();
                                }

                                final rolesBoardResourceState =
                                    rolesBoardResourceStateResult.value!;
                                final rolesBoard = rolesBoardList[index];
                                return ListView.separated(
                                  shrinkWrap: true,
                                  itemCount:
                                      rolesBoardResourceState.roleStates.length,
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
                                    return _RoleResourceStateTile(
                                      role: role,
                                      roleState: roleState,
                                      addonInstanceCode: rolesBoardResourceState
                                          .addonInstanceCode,
                                      activeStructureCode:
                                          widget.activeStructureCode,
                                      resourceId: widget.resourceId,
                                      onUpdated: () {
                                        widget.onUpdated.call();
                                      },
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

class _RoleResourceStateTile extends StatelessWidget {
  const _RoleResourceStateTile({
    super.key,
    required this.role,
    required this.addonInstanceCode,
    required this.roleState,
    required this.activeStructureCode,
    required this.resourceId,
    required this.onUpdated,
  });

  final Role role;
  final String addonInstanceCode;
  final RoleResourceState roleState;
  final String activeStructureCode;
  final String resourceId;
  final void Function() onUpdated;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
      ),
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      role.name,
                    ),
                  ),
                  Text(
                    roleState.status.title,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: AppSpacing.sm,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Consumer(
                    builder: (_, WidgetRef ref, __) {
                      final provider =
                          rolesBoardUpdateResourceRoleProgressProvider(
                        activeStructureCode: activeStructureCode,
                        resourceId: resourceId,
                        roleId: role.id,
                      );
                      ref.listen(
                        provider,
                        (previous, next) {
                          next.whenOrNull(
                            error: (error, stackTrace) => showAppAlertDialog(
                              context: context,
                              title: 'Error',
                              description: '$error\n$stackTrace',
                            ),
                          );

                          next.whenData(
                            (data) => onUpdated.call(),
                          );
                        },
                      );

                      final submitStatus = ref.watch(provider);
                      if (submitStatus.isLoading) {
                        return const AppCircularLoadingWidget();
                      }
                      return ElevatedButton(
                        onPressed: () {
                          showInputLineDialog(
                            context,
                            keyboardType: TextInputType.number,
                            title: 'Enter new progress',
                            hintText: 'New progress',
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                RegExp(
                                  r'^\d+\.?\d{0,2}',
                                ),
                              ), // Allows numbers with up to 2 decimal places
                            ],
                          ).then(
                            (value) {
                              if (value != null) {
                                final progressValue = double.tryParse(value);
                                if (progressValue == null) {
                                  // TODO: show error
                                  return;
                                }
                                ref.read(provider.notifier).submit(
                                      payload: RolesBoardRoleProgressPayload(
                                        progress: progressValue,
                                        roleId: role.id,
                                        addonInstanceCode: addonInstanceCode,
                                      ),
                                    );
                              }
                            },
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              '${roleState.progress.round()} %',
                            ),
                            const SizedBox(
                              width: AppSpacing.sm,
                            ),
                            const Icon(Icons.edit),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Flexible(
                  child: Consumer(
                    builder: (_, WidgetRef ref, __) {
                      final provider =
                          rolesBoardUpdateResourceRoleStatusProvider(
                        activeStructureCode: activeStructureCode,
                        resourceId: resourceId,
                        roleId: role.id,
                      );

                      ref.listen(
                        provider,
                        (previous, next) {
                          next.whenOrNull(
                            error: (error, stackTrace) => showAppAlertDialog(
                              context: context,
                              title: 'Error',
                              description: '$error\n$stackTrace',
                            ),
                          );

                          next.whenData(
                            (data) => onUpdated.call(),
                          );
                        },
                      );

                      final submitStatus = ref.watch(provider);
                      if (submitStatus.isLoading) {
                        return const AppCircularLoadingWidget();
                      }
                      return ElevatedButton(
                        onPressed: () {
                          showInputLineDialog(
                            context,
                            keyboardType: TextInputType.text,
                            title: 'Enter new status',
                            hintText: 'New status',
                          ).then(
                            (value) {
                              if (value != null) {
                                ref.read(provider.notifier).submit(
                                      payload: RolesBoardRoleStatusPayload(
                                        status: value,
                                        roleId: role.id,
                                        addonInstanceCode: addonInstanceCode,
                                      ),
                                    );
                              }
                            },
                          );
                        },
                        child: Row(
                          children: [
                            Text(roleState.status.title),
                            const SizedBox(
                              width: AppSpacing.sm,
                            ),
                            const Icon(Icons.edit),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
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
