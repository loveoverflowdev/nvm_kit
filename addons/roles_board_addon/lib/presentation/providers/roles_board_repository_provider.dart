import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roles_board_addon/domain.dart';

final rolesBoardRepositoryProvider = AutoDisposeProvider<RolesBoardRepository>(
  (ref) => throw UnimplementedError(),
);
