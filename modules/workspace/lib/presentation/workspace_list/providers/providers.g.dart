// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workspaceRepositoryHash() =>
    r'1752213df6e422ce11e98095510713a703965ab3';

/// See also [workspaceRepository].
@ProviderFor(workspaceRepository)
final workspaceRepositoryProvider =
    AutoDisposeProvider<WorkspaceRepository>.internal(
  workspaceRepository,
  name: r'workspaceRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$workspaceRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WorkspaceRepositoryRef = AutoDisposeProviderRef<WorkspaceRepository>;
String _$workspaceListHash() => r'2a24772d2e29450949155df4d3c10dea5ba4dc90';

/// See also [WorkspaceList].
@ProviderFor(WorkspaceList)
final workspaceListProvider = AutoDisposeNotifierProvider<WorkspaceList,
    AsyncValue<List<WorkspaceBlock>>>.internal(
  WorkspaceList.new,
  name: r'workspaceListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$workspaceListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WorkspaceList = AutoDisposeNotifier<AsyncValue<List<WorkspaceBlock>>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
