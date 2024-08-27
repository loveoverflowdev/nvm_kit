// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_structure_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceStructureHash() =>
    r'03236ac8ea8f7e49a5965246a5aa0063eaed16d8';

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

/// See also [activeResourceStructure].
@ProviderFor(activeResourceStructure)
const activeResourceStructureProvider = ActiveResourceStructureFamily();

/// See also [activeResourceStructure].
class ActiveResourceStructureFamily
    extends Family<AsyncValue<ActiveStructure>> {
  /// See also [activeResourceStructure].
  const ActiveResourceStructureFamily();

  /// See also [activeResourceStructure].
  ActiveResourceStructureProvider call({
    required String resourceStructureId,
  }) {
    return ActiveResourceStructureProvider(
      resourceStructureId: resourceStructureId,
    );
  }

  @override
  ActiveResourceStructureProvider getProviderOverride(
    covariant ActiveResourceStructureProvider provider,
  ) {
    return call(
      resourceStructureId: provider.resourceStructureId,
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
  String? get name => r'activeResourceStructureProvider';
}

/// See also [activeResourceStructure].
class ActiveResourceStructureProvider
    extends AutoDisposeFutureProvider<ActiveStructure> {
  /// See also [activeResourceStructure].
  ActiveResourceStructureProvider({
    required String resourceStructureId,
  }) : this._internal(
          (ref) => activeResourceStructure(
            ref as ActiveResourceStructureRef,
            resourceStructureId: resourceStructureId,
          ),
          from: activeResourceStructureProvider,
          name: r'activeResourceStructureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceStructureHash,
          dependencies: ActiveResourceStructureFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceStructureFamily._allTransitiveDependencies,
          resourceStructureId: resourceStructureId,
        );

  ActiveResourceStructureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.resourceStructureId,
  }) : super.internal();

  final String resourceStructureId;

  @override
  Override overrideWith(
    FutureOr<ActiveStructure> Function(ActiveResourceStructureRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceStructureProvider._internal(
        (ref) => create(ref as ActiveResourceStructureRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        resourceStructureId: resourceStructureId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ActiveStructure> createElement() {
    return _ActiveResourceStructureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceStructureProvider &&
        other.resourceStructureId == resourceStructureId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceStructureId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceStructureRef
    on AutoDisposeFutureProviderRef<ActiveStructure> {
  /// The parameter `resourceStructureId` of this provider.
  String get resourceStructureId;
}

class _ActiveResourceStructureProviderElement
    extends AutoDisposeFutureProviderElement<ActiveStructure>
    with ActiveResourceStructureRef {
  _ActiveResourceStructureProviderElement(super.provider);

  @override
  String get resourceStructureId =>
      (origin as ActiveResourceStructureProvider).resourceStructureId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
