// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceListHash() =>
    r'c65d65125149970ac63b374232caf1a4e3f843e8';

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

/// See also [activeResourceList].
@ProviderFor(activeResourceList)
const activeResourceListProvider = ActiveResourceListFamily();

/// See also [activeResourceList].
class ActiveResourceListFamily
    extends Family<AsyncValue<List<ActiveResource>>> {
  /// See also [activeResourceList].
  const ActiveResourceListFamily();

  /// See also [activeResourceList].
  ActiveResourceListProvider call({
    required String resourceCode,
  }) {
    return ActiveResourceListProvider(
      resourceCode: resourceCode,
    );
  }

  @override
  ActiveResourceListProvider getProviderOverride(
    covariant ActiveResourceListProvider provider,
  ) {
    return call(
      resourceCode: provider.resourceCode,
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
  String? get name => r'activeResourceListProvider';
}

/// See also [activeResourceList].
class ActiveResourceListProvider
    extends AutoDisposeFutureProvider<List<ActiveResource>> {
  /// See also [activeResourceList].
  ActiveResourceListProvider({
    required String resourceCode,
  }) : this._internal(
          (ref) => activeResourceList(
            ref as ActiveResourceListRef,
            resourceCode: resourceCode,
          ),
          from: activeResourceListProvider,
          name: r'activeResourceListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceListHash,
          dependencies: ActiveResourceListFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceListFamily._allTransitiveDependencies,
          resourceCode: resourceCode,
        );

  ActiveResourceListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.resourceCode,
  }) : super.internal();

  final String resourceCode;

  @override
  Override overrideWith(
    FutureOr<List<ActiveResource>> Function(ActiveResourceListRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceListProvider._internal(
        (ref) => create(ref as ActiveResourceListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        resourceCode: resourceCode,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ActiveResource>> createElement() {
    return _ActiveResourceListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceListProvider &&
        other.resourceCode == resourceCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceListRef
    on AutoDisposeFutureProviderRef<List<ActiveResource>> {
  /// The parameter `resourceCode` of this provider.
  String get resourceCode;
}

class _ActiveResourceListProviderElement
    extends AutoDisposeFutureProviderElement<List<ActiveResource>>
    with ActiveResourceListRef {
  _ActiveResourceListProviderElement(super.provider);

  @override
  String get resourceCode =>
      (origin as ActiveResourceListProvider).resourceCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
