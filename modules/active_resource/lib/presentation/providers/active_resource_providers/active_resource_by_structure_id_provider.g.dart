// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_by_structure_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceByStructureIdHash() =>
    r'bab80dcfcb88713c8e5f6bbb54ac53e589ecc05f';

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

abstract class _$ActiveResourceByStructureId
    extends BuildlessAutoDisposeNotifier<AsyncValue<domain.ActiveResource?>> {
  late final String activeStructureId;

  AsyncValue<domain.ActiveResource?> build(
    String activeStructureId,
  );
}

/// See also [ActiveResourceByStructureId].
@ProviderFor(ActiveResourceByStructureId)
const activeResourceByStructureIdProvider = ActiveResourceByStructureIdFamily();

/// See also [ActiveResourceByStructureId].
class ActiveResourceByStructureIdFamily
    extends Family<AsyncValue<domain.ActiveResource?>> {
  /// See also [ActiveResourceByStructureId].
  const ActiveResourceByStructureIdFamily();

  /// See also [ActiveResourceByStructureId].
  ActiveResourceByStructureIdProvider call(
    String activeStructureId,
  ) {
    return ActiveResourceByStructureIdProvider(
      activeStructureId,
    );
  }

  @override
  ActiveResourceByStructureIdProvider getProviderOverride(
    covariant ActiveResourceByStructureIdProvider provider,
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
  String? get name => r'activeResourceByStructureIdProvider';
}

/// See also [ActiveResourceByStructureId].
class ActiveResourceByStructureIdProvider
    extends AutoDisposeNotifierProviderImpl<ActiveResourceByStructureId,
        AsyncValue<domain.ActiveResource?>> {
  /// See also [ActiveResourceByStructureId].
  ActiveResourceByStructureIdProvider(
    String activeStructureId,
  ) : this._internal(
          () => ActiveResourceByStructureId()
            ..activeStructureId = activeStructureId,
          from: activeResourceByStructureIdProvider,
          name: r'activeResourceByStructureIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceByStructureIdHash,
          dependencies: ActiveResourceByStructureIdFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceByStructureIdFamily._allTransitiveDependencies,
          activeStructureId: activeStructureId,
        );

  ActiveResourceByStructureIdProvider._internal(
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
  AsyncValue<domain.ActiveResource?> runNotifierBuild(
    covariant ActiveResourceByStructureId notifier,
  ) {
    return notifier.build(
      activeStructureId,
    );
  }

  @override
  Override overrideWith(ActiveResourceByStructureId Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceByStructureIdProvider._internal(
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
  AutoDisposeNotifierProviderElement<ActiveResourceByStructureId,
      AsyncValue<domain.ActiveResource?>> createElement() {
    return _ActiveResourceByStructureIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceByStructureIdProvider &&
        other.activeStructureId == activeStructureId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceByStructureIdRef
    on AutoDisposeNotifierProviderRef<AsyncValue<domain.ActiveResource?>> {
  /// The parameter `activeStructureId` of this provider.
  String get activeStructureId;
}

class _ActiveResourceByStructureIdProviderElement
    extends AutoDisposeNotifierProviderElement<ActiveResourceByStructureId,
        AsyncValue<domain.ActiveResource?>>
    with ActiveResourceByStructureIdRef {
  _ActiveResourceByStructureIdProviderElement(super.provider);

  @override
  String get activeStructureId =>
      (origin as ActiveResourceByStructureIdProvider).activeStructureId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
