// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workspace_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$workspaceHash() => r'83f476edbb7bac5eff244e6ce8166dbd34e87438';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [workspace].
@ProviderFor(workspace)
const workspaceProvider = WorkspaceFamily();

/// See also [workspace].
class WorkspaceFamily extends Family<AsyncValue<WorkspaceState>> {
  /// See also [workspace].
  const WorkspaceFamily();

  /// See also [workspace].
  WorkspaceProvider call({
    required String workspaceId,
  }) {
    return WorkspaceProvider(
      workspaceId: workspaceId,
    );
  }

  @override
  WorkspaceProvider getProviderOverride(
    covariant WorkspaceProvider provider,
  ) {
    return call(
      workspaceId: provider.workspaceId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'workspaceProvider';
}

/// See also [workspace].
class WorkspaceProvider extends AutoDisposeFutureProvider<WorkspaceState> {
  /// See also [workspace].
  WorkspaceProvider({
    required String workspaceId,
  }) : this._internal(
          (ref) => workspace(
            ref as WorkspaceRef,
            workspaceId: workspaceId,
          ),
          from: workspaceProvider,
          name: r'workspaceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$workspaceHash,
          dependencies: WorkspaceFamily._dependencies,
          allTransitiveDependencies: WorkspaceFamily._allTransitiveDependencies,
          workspaceId: workspaceId,
        );

  WorkspaceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.workspaceId,
  }) : super.internal();

  final String workspaceId;

  @override
  Override overrideWith(
    FutureOr<WorkspaceState> Function(WorkspaceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: WorkspaceProvider._internal(
        (ref) => create(ref as WorkspaceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        workspaceId: workspaceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<WorkspaceState> createElement() {
    return _WorkspaceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkspaceProvider && other.workspaceId == workspaceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, workspaceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WorkspaceRef on AutoDisposeFutureProviderRef<WorkspaceState> {
  /// The parameter `workspaceId` of this provider.
  String get workspaceId;
}

class _WorkspaceProviderElement
    extends AutoDisposeFutureProviderElement<WorkspaceState> with WorkspaceRef {
  _WorkspaceProviderElement(super.provider);

  @override
  String get workspaceId => (origin as WorkspaceProvider).workspaceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
