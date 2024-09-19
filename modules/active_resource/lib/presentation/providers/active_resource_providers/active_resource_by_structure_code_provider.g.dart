// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_by_structure_code_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceByStructureCodeHash() =>
    r'235f42929b16251876aa787a20e56a883c849501';

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

abstract class _$ActiveResourceByStructureCode
    extends BuildlessAutoDisposeNotifier<AsyncValue<domain.ActiveResource?>> {
  late final String activeStructureCode;

  AsyncValue<domain.ActiveResource?> build(
    String activeStructureCode,
  );
}

/// See also [ActiveResourceByStructureCode].
@ProviderFor(ActiveResourceByStructureCode)
const activeResourceByStructureCodeProvider =
    ActiveResourceByStructureCodeFamily();

/// See also [ActiveResourceByStructureCode].
class ActiveResourceByStructureCodeFamily
    extends Family<AsyncValue<domain.ActiveResource?>> {
  /// See also [ActiveResourceByStructureCode].
  const ActiveResourceByStructureCodeFamily();

  /// See also [ActiveResourceByStructureCode].
  ActiveResourceByStructureCodeProvider call(
    String activeStructureCode,
  ) {
    return ActiveResourceByStructureCodeProvider(
      activeStructureCode,
    );
  }

  @override
  ActiveResourceByStructureCodeProvider getProviderOverride(
    covariant ActiveResourceByStructureCodeProvider provider,
  ) {
    return call(
      provider.activeStructureCode,
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
  String? get name => r'activeResourceByStructureCodeProvider';
}

/// See also [ActiveResourceByStructureCode].
class ActiveResourceByStructureCodeProvider
    extends AutoDisposeNotifierProviderImpl<ActiveResourceByStructureCode,
        AsyncValue<domain.ActiveResource?>> {
  /// See also [ActiveResourceByStructureCode].
  ActiveResourceByStructureCodeProvider(
    String activeStructureCode,
  ) : this._internal(
          () => ActiveResourceByStructureCode()
            ..activeStructureCode = activeStructureCode,
          from: activeResourceByStructureCodeProvider,
          name: r'activeResourceByStructureCodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceByStructureCodeHash,
          dependencies: ActiveResourceByStructureCodeFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceByStructureCodeFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
        );

  ActiveResourceByStructureCodeProvider._internal(
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
  AsyncValue<domain.ActiveResource?> runNotifierBuild(
    covariant ActiveResourceByStructureCode notifier,
  ) {
    return notifier.build(
      activeStructureCode,
    );
  }

  @override
  Override overrideWith(ActiveResourceByStructureCode Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceByStructureCodeProvider._internal(
        () => create()..activeStructureCode = activeStructureCode,
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
  AutoDisposeNotifierProviderElement<ActiveResourceByStructureCode,
      AsyncValue<domain.ActiveResource?>> createElement() {
    return _ActiveResourceByStructureCodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceByStructureCodeProvider &&
        other.activeStructureCode == activeStructureCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceByStructureCodeRef
    on AutoDisposeNotifierProviderRef<AsyncValue<domain.ActiveResource?>> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;
}

class _ActiveResourceByStructureCodeProviderElement
    extends AutoDisposeNotifierProviderElement<ActiveResourceByStructureCode,
        AsyncValue<domain.ActiveResource?>>
    with ActiveResourceByStructureCodeRef {
  _ActiveResourceByStructureCodeProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as ActiveResourceByStructureCodeProvider).activeStructureCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
