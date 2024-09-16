import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/domain.dart';

import '../providers.dart';

class RolesBoardResourceStateView extends ConsumerStatefulWidget {
  final RolesBoardResourceState rolesBoardResourceState;

  const RolesBoardResourceStateView({
    super.key,
    required this.rolesBoardResourceState,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RolesBoardResourceStateViewState();
}

class _RolesBoardResourceStateViewState
    extends ConsumerState<RolesBoardResourceStateView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(rolesBoardListProvider.notifier).loadRolesBoardList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(AppSpacing.lg);
    return Material(
      borderRadius: borderRadius,
      color: Theme.of(context).colorScheme.surfaceVariant,
      child: InkWell(
        onTap: () {},
        borderRadius: borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Roles',
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
                value: widget.rolesBoardResourceState.finalStatus.description,
              ),
              const SizedBox(
                height: AppSpacing.md,
              ),
              Consumer(
                builder: (_, WidgetRef ref, __) {
                  final rolesBoardList = ref.watch(rolesBoardListProvider);
                  return rolesBoardList.when(
                    data: (rolesBoardList) {
                      final index = rolesBoardList.indexWhere((e) =>
                          e.id ==
                          widget.rolesBoardResourceState.widgetBoardRoleId);
                      if (index == -1) {
                        return const SizedBox.shrink();
                      }

                      final rolesBoard = rolesBoardList[index];

                      // ====>
                      final roleStates =
                          widget.rolesBoardResourceState.widgetRoles;
                      return SizedBox(
                        height: 48,
                        child: ListView.separated(
                          itemCount: roleStates.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Builder(
                            builder: (_) {
                              final roleState = roleStates[index];
                              final role = rolesBoard.roles
                                  .firstWhere((e) => e.id == roleState.roleId);
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    role.shortName,
                                  ),
                                  Text(
                                    roleState.status.description,
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          separatorBuilder: (BuildContext context, int index) {
                            return const VerticalDivider();
                          },
                        ),
                      );
                    },
                    error: (error, stackTrace) =>
                        AppErrorWidget(error, stackTrace: stackTrace),
                    loading: () => const AppCircularLoadingWidget(),
                  );
                },
              ),
            ],
          ),
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

/*
  "widgetBoardRoleId": "657763459693282282",
  "averageProgress": 0,
  "finalStatus": "NOT_STARTED",
  "widgetRoles": [
    {
        "widgetRoleId": "664886483190025000",
        "assignedTo": "0",
        "status": "NOT_STARTED",
        "progress": 0
    },
  ],
*/
