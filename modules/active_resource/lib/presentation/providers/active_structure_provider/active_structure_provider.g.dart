// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_structure_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeStructureHash() => r'29a4766db66de863cab52526c0afc8ff46cf6669';

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

/// See also [activeStructure].
@ProviderFor(activeStructure)
const activeStructureProvider = ActiveStructureFamily();

/// See also [activeStructure].
class ActiveStructureFamily extends Family<AsyncValue<ActiveStructure>> {
  /// See also [activeStructure].
  const ActiveStructureFamily();

  /// See also [activeStructure].
  ActiveStructureProvider call({
    required String resourceStructureId,
  }) {
    return ActiveStructureProvider(
      resourceStructureId: resourceStructureId,
    );
  }

  @override
  ActiveStructureProvider getProviderOverride(
    covariant ActiveStructureProvider provider,
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
  String? get name => r'activeStructureProvider';
}

/// See also [activeStructure].
class ActiveStructureProvider
    extends AutoDisposeFutureProvider<ActiveStructure> {
  /// See also [activeStructure].
  ActiveStructureProvider({
    required String resourceStructureId,
  }) : this._internal(
          (ref) => activeStructure(
            ref as ActiveStructureRef,
            resourceStructureId: resourceStructureId,
          ),
          from: activeStructureProvider,
          name: r'activeStructureProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeStructureHash,
          dependencies: ActiveStructureFamily._dependencies,
          allTransitiveDependencies:
              ActiveStructureFamily._allTransitiveDependencies,
          resourceStructureId: resourceStructureId,
        );

  ActiveStructureProvider._internal(
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
    FutureOr<ActiveStructure> Function(ActiveStructureRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ActiveStructureProvider._internal(
        (ref) => create(ref as ActiveStructureRef),
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
    return _ActiveStructureProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveStructureProvider &&
        other.resourceStructureId == resourceStructureId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceStructureId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveStructureRef on AutoDisposeFutureProviderRef<ActiveStructure> {
  /// The parameter `resourceStructureId` of this provider.
  String get resourceStructureId;
}

class _ActiveStructureProviderElement
    extends AutoDisposeFutureProviderElement<ActiveStructure>
    with ActiveStructureRef {
  _ActiveStructureProviderElement(super.provider);

  @override
  String get resourceStructureId =>
      (origin as ActiveStructureProvider).resourceStructureId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
