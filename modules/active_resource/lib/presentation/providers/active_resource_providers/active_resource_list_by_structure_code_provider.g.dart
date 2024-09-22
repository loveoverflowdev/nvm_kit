// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_list_by_structure_code_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceListByStructureCodeHash() =>
    r'05b14557d36cf78557888fc9fd66665cc29e058a';

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

abstract class _$ActiveResourceListByStructureCode
    extends BuildlessAutoDisposeNotifier<AsyncValue<List<ActiveResource>>> {
  late final String activeStructureCode;

  AsyncValue<List<ActiveResource>> build(
    String activeStructureCode,
  );
}

/// See also [ActiveResourceListByStructureCode].
@ProviderFor(ActiveResourceListByStructureCode)
const activeResourceListByStructureCodeProvider =
    ActiveResourceListByStructureCodeFamily();

/// See also [ActiveResourceListByStructureCode].
class ActiveResourceListByStructureCodeFamily
    extends Family<AsyncValue<List<ActiveResource>>> {
  /// See also [ActiveResourceListByStructureCode].
  const ActiveResourceListByStructureCodeFamily();

  /// See also [ActiveResourceListByStructureCode].
  ActiveResourceListByStructureCodeProvider call(
    String activeStructureCode,
  ) {
    return ActiveResourceListByStructureCodeProvider(
      activeStructureCode,
    );
  }

  @override
  ActiveResourceListByStructureCodeProvider getProviderOverride(
    covariant ActiveResourceListByStructureCodeProvider provider,
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
  String? get name => r'activeResourceListByStructureCodeProvider';
}

/// See also [ActiveResourceListByStructureCode].
class ActiveResourceListByStructureCodeProvider
    extends AutoDisposeNotifierProviderImpl<ActiveResourceListByStructureCode,
        AsyncValue<List<ActiveResource>>> {
  /// See also [ActiveResourceListByStructureCode].
  ActiveResourceListByStructureCodeProvider(
    String activeStructureCode,
  ) : this._internal(
          () => ActiveResourceListByStructureCode()
            ..activeStructureCode = activeStructureCode,
          from: activeResourceListByStructureCodeProvider,
          name: r'activeResourceListByStructureCodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceListByStructureCodeHash,
          dependencies: ActiveResourceListByStructureCodeFamily._dependencies,
          allTransitiveDependencies: ActiveResourceListByStructureCodeFamily
              ._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
        );

  ActiveResourceListByStructureCodeProvider._internal(
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
  AsyncValue<List<ActiveResource>> runNotifierBuild(
    covariant ActiveResourceListByStructureCode notifier,
  ) {
    return notifier.build(
      activeStructureCode,
    );
  }

  @override
  Override overrideWith(ActiveResourceListByStructureCode Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceListByStructureCodeProvider._internal(
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
  AutoDisposeNotifierProviderElement<ActiveResourceListByStructureCode,
      AsyncValue<List<ActiveResource>>> createElement() {
    return _ActiveResourceListByStructureCodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceListByStructureCodeProvider &&
        other.activeStructureCode == activeStructureCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceListByStructureCodeRef
    on AutoDisposeNotifierProviderRef<AsyncValue<List<ActiveResource>>> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;
}

class _ActiveResourceListByStructureCodeProviderElement
    extends AutoDisposeNotifierProviderElement<
        ActiveResourceListByStructureCode, AsyncValue<List<ActiveResource>>>
    with ActiveResourceListByStructureCodeRef {
  _ActiveResourceListByStructureCodeProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as ActiveResourceListByStructureCodeProvider).activeStructureCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
