// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceListHash() =>
    r'63110dcd8efd779f050f969a7d7ac9db0eb83286';

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

abstract class _$ActiveResourceList
    extends BuildlessAutoDisposeNotifier<ActiveResourceListState> {
  late final String activeStructureCode;

  ActiveResourceListState build({
    required String activeStructureCode,
  });
}

/// See also [ActiveResourceList].
@ProviderFor(ActiveResourceList)
const activeResourceListProvider = ActiveResourceListFamily();

/// See also [ActiveResourceList].
class ActiveResourceListFamily extends Family<ActiveResourceListState> {
  /// See also [ActiveResourceList].
  const ActiveResourceListFamily();

  /// See also [ActiveResourceList].
  ActiveResourceListProvider call({
    required String activeStructureCode,
  }) {
    return ActiveResourceListProvider(
      activeStructureCode: activeStructureCode,
    );
  }

  @override
  ActiveResourceListProvider getProviderOverride(
    covariant ActiveResourceListProvider provider,
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
  String? get name => r'activeResourceListProvider';
}

/// See also [ActiveResourceList].
class ActiveResourceListProvider extends AutoDisposeNotifierProviderImpl<
    ActiveResourceList, ActiveResourceListState> {
  /// See also [ActiveResourceList].
  ActiveResourceListProvider({
    required String activeStructureCode,
  }) : this._internal(
          () => ActiveResourceList()..activeStructureCode = activeStructureCode,
          from: activeResourceListProvider,
          name: r'activeResourceListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceListHash,
          dependencies: ActiveResourceListFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceListFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
        );

  ActiveResourceListProvider._internal(
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
  ActiveResourceListState runNotifierBuild(
    covariant ActiveResourceList notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
    );
  }

  @override
  Override overrideWith(ActiveResourceList Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceListProvider._internal(
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
  AutoDisposeNotifierProviderElement<ActiveResourceList,
      ActiveResourceListState> createElement() {
    return _ActiveResourceListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceListProvider &&
        other.activeStructureCode == activeStructureCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceListRef
    on AutoDisposeNotifierProviderRef<ActiveResourceListState> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;
}

class _ActiveResourceListProviderElement
    extends AutoDisposeNotifierProviderElement<ActiveResourceList,
        ActiveResourceListState> with ActiveResourceListRef {
  _ActiveResourceListProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as ActiveResourceListProvider).activeStructureCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
