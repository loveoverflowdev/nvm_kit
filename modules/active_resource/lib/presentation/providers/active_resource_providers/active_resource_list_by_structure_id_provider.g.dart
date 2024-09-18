// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_list_by_structure_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceListByStructureIdHash() =>
    r'01c15a454c611bdc9cdd0a64c8d4ff4be9c0242f';

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

abstract class _$ActiveResourceListByStructureId
    extends BuildlessAutoDisposeNotifier<AsyncValue<List<ActiveResource>>> {
  late final String activeStructureId;

  AsyncValue<List<ActiveResource>> build(
    String activeStructureId,
  );
}

/// See also [ActiveResourceListByStructureId].
@ProviderFor(ActiveResourceListByStructureId)
const activeResourceListByStructureIdProvider =
    ActiveResourceListByStructureIdFamily();

/// See also [ActiveResourceListByStructureId].
class ActiveResourceListByStructureIdFamily
    extends Family<AsyncValue<List<ActiveResource>>> {
  /// See also [ActiveResourceListByStructureId].
  const ActiveResourceListByStructureIdFamily();

  /// See also [ActiveResourceListByStructureId].
  ActiveResourceListByStructureIdProvider call(
    String activeStructureId,
  ) {
    return ActiveResourceListByStructureIdProvider(
      activeStructureId,
    );
  }

  @override
  ActiveResourceListByStructureIdProvider getProviderOverride(
    covariant ActiveResourceListByStructureIdProvider provider,
  ) {
    return call(
      provider.activeStructureId,
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
  String? get name => r'activeResourceListByStructureIdProvider';
}

/// See also [ActiveResourceListByStructureId].
class ActiveResourceListByStructureIdProvider
    extends AutoDisposeNotifierProviderImpl<ActiveResourceListByStructureId,
        AsyncValue<List<ActiveResource>>> {
  /// See also [ActiveResourceListByStructureId].
  ActiveResourceListByStructureIdProvider(
    String activeStructureId,
  ) : this._internal(
          () => ActiveResourceListByStructureId()
            ..activeStructureId = activeStructureId,
          from: activeResourceListByStructureIdProvider,
          name: r'activeResourceListByStructureIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceListByStructureIdHash,
          dependencies: ActiveResourceListByStructureIdFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceListByStructureIdFamily._allTransitiveDependencies,
          activeStructureId: activeStructureId,
        );

  ActiveResourceListByStructureIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.activeStructureId,
  }) : super.internal();

  final String activeStructureId;

  @override
  AsyncValue<List<ActiveResource>> runNotifierBuild(
    covariant ActiveResourceListByStructureId notifier,
  ) {
    return notifier.build(
      activeStructureId,
    );
  }

  @override
  Override overrideWith(ActiveResourceListByStructureId Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceListByStructureIdProvider._internal(
        () => create()..activeStructureId = activeStructureId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        activeStructureId: activeStructureId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ActiveResourceListByStructureId,
      AsyncValue<List<ActiveResource>>> createElement() {
    return _ActiveResourceListByStructureIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceListByStructureIdProvider &&
        other.activeStructureId == activeStructureId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceListByStructureIdRef
    on AutoDisposeNotifierProviderRef<AsyncValue<List<ActiveResource>>> {
  /// The parameter `activeStructureId` of this provider.
  String get activeStructureId;
}

class _ActiveResourceListByStructureIdProviderElement
    extends AutoDisposeNotifierProviderElement<ActiveResourceListByStructureId,
        AsyncValue<List<ActiveResource>>>
    with ActiveResourceListByStructureIdRef {
  _ActiveResourceListByStructureIdProviderElement(super.provider);

  @override
  String get activeStructureId =>
      (origin as ActiveResourceListByStructureIdProvider).activeStructureId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
