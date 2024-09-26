import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/domain.dart';

final remoteRolesBoardRepositoryProvider = AutoDisposeProvider<RemoteRolesBoardRepository>(
  (ref) => throw UnimplementedError(),
);

final localRolesBoardRepositoryProvider = AutoDisposeProvider<LocalRolesBoardRepository>(
  (ref) => throw UnimplementedError(),
);

final rolesBoardResourceStateRepository = AutoDisposeProvider<RolesBoardResourceStateRepository>(
  (ref) => throw UnimplementedError(),
);
