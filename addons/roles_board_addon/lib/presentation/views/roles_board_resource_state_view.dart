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
  ConsumerState<ConsumerStatefulWidget> createState() => _RolesBoardResourceStateViewState();
}

class _RolesBoardResourceStateViewState extends ConsumerState<RolesBoardResourceStateView> {

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
              Divider(),
              Text(
                  'Average progress: ${widget.rolesBoardResourceState.averageProgress.round()} %'),
              Text('Final status: ${widget.rolesBoardResourceState.finalStatus}'),
              SizedBox(
                height: AppSpacing.md,
              ),
              Consumer(
                builder: (_, WidgetRef ref, __) {
                  final rolesBoardList = ref.watch(rolesBoardListProvider);
                  return rolesBoardList.when(
                    data: (rolesBoardList) {
                      print('+++++++++++++++++ rolesBoardList +++++++++++++++: $rolesBoardList');
                      
                      final index = rolesBoardList.indexWhere((e) => e.id == widget.rolesBoardResourceState.widgetBoardRoleId);
                      if (index == -1) {
                        return const SizedBox.shrink();
                      }

                      final rolesBoard = rolesBoardList[index];

                      // ====>
                      return SizedBox(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            for (final roleRef in widget.rolesBoardResourceState.widgetRoles)
                              Builder(builder: (_) {
                                final role = rolesBoard.roles.firstWhere((e) => e.id == roleRef.roleId);
                                return Column(
                                  children: [
                                    Text(roleRef.status.description,),
                                    Text(role.shortName,),
                                  ],
                                );
                              },
                            ),
                          ],
                        ),
                      ); 
                    },
                    error: (error, stackTrace) => AppErrorWidget(error, stackTrace: stackTrace), 
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

/*
  "widgetBoardRoleId": "657763459693282282",
  "averageProgress": 0,
  "finalStatus": "NOT_STARTED",
  "widgetRoles": [
    {
        "widgetRoleId": "664886483190025000",
        "assignedBy": "0",
        "status": "NOT_STARTED",
        "progress": 0
    },
  ],
*/
