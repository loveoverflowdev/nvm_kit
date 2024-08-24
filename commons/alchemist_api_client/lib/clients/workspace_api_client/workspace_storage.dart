import 'package:flutter/foundation.dart';

abstract class WorkspaceStorage {
  WorkspaceStorage();

  factory WorkspaceStorage.inMemory() => _InMemoryWorkspaceStorage();

  Future<String?> readWorkspaceId();
  Future<void> saveWorkspaceId(String workspaceId);

  Future<void> clear();
}

class _InMemoryWorkspaceStorage extends WorkspaceStorage {
  String? _workspaceId;

  @override
  Future<String?> readWorkspaceId() async {
    debugPrint('readWorkspaceId: $_workspaceId');
    return _workspaceId;
  }

  @override
  Future<void> saveWorkspaceId(String workspaceId) async {
    debugPrint('savedWorkspaceId: $workspaceId');
    _workspaceId = workspaceId;
  }

  @override
  Future<void> clear() async {
    _workspaceId = null;
  }
}
