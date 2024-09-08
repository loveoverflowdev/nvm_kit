// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_structure_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeStructureHash() => r'11843cf8575fab9c5bf718475f625cf7f492d884';

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
    required String activeStructureCode,
  }) {
    return ActiveStructureProvider(
      activeStructureCode: activeStructureCode,
    );
  }

  @override
  ActiveStructureProvider getProviderOverride(
    covariant ActiveStructureProvider provider,
  ) {
    return call(
      activeStructureCode: provider.activeStructureCode,
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
    required String activeStructureCode,
  }) : this._internal(
          (ref) => activeStructure(
            ref as ActiveStructureRef,
            activeStructureCode: activeStructureCode,
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
          activeStructureCode: activeStructureCode,
        );

  ActiveStructureProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.activeStructureCode,
  }) : super.internal();

  final String activeStructureCode;

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
        activeStructureCode: activeStructureCode,
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
        other.activeStructureCode == activeStructureCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveStructureRef on AutoDisposeFutureProviderRef<ActiveStructure> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;
}

class _ActiveStructureProviderElement
    extends AutoDisposeFutureProviderElement<ActiveStructure>
    with ActiveStructureRef {
  _ActiveStructureProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as ActiveStructureProvider).activeStructureCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
