import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../functions/workspace/models/blocks/blocks.dart';

part 'providers.g.dart';

@riverpod
final class WorkspaceList extends _$WorkspaceList {
  @override
  AsyncValue<List<WorkspaceBlock>> build() => const AsyncData([]);
}
