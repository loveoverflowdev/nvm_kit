import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/data.dart';

final rolesBoardRepositoryProvider = AutoDisposeProvider<RemoteRolesBoardRepository>(
  (ref) => throw UnimplementedError(),
);
