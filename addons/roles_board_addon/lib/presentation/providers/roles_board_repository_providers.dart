import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/domain.dart';

final remoteRolesBoardRepositoryProvider = Provider<RemoteRolesBoardRepository>(
  (ref) => throw UnimplementedError(),
);

final localRolesBoardRepositoryProvider = Provider<LocalRolesBoardRepository>(
  (ref) => throw UnimplementedError(),
);

final rolesBoardResourceStateRepositoryProvider =
    Provider<RolesBoardResourceStateRepository>(
  (ref) => throw UnimplementedError(),
);
