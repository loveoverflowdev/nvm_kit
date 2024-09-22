// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_delete_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceDeleteHash() =>
    r'f0d8baf6683e3e392e97c6d990d3ec4072592525';

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

abstract class _$ActiveResourceDelete
    extends BuildlessAutoDisposeNotifier<AsyncValue<void>> {
  late final String activeStructureCode;
  late final String key;

  AsyncValue<void> build({
    required String activeStructureCode,
    required String key,
  });
}

/// See also [ActiveResourceDelete].
@ProviderFor(ActiveResourceDelete)
const activeResourceDeleteProvider = ActiveResourceDeleteFamily();

/// See also [ActiveResourceDelete].
class ActiveResourceDeleteFamily extends Family<AsyncValue<void>> {
  /// See also [ActiveResourceDelete].
  const ActiveResourceDeleteFamily();

  /// See also [ActiveResourceDelete].
  ActiveResourceDeleteProvider call({
    required String activeStructureCode,
    required String key,
  }) {
    return ActiveResourceDeleteProvider(
      activeStructureCode: activeStructureCode,
      key: key,
    );
  }

  @override
  ActiveResourceDeleteProvider getProviderOverride(
    covariant ActiveResourceDeleteProvider provider,
  ) {
    return call(
      activeStructureCode: provider.activeStructureCode,
      key: provider.key,
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
  String? get name => r'activeResourceDeleteProvider';
}

/// See also [ActiveResourceDelete].
class ActiveResourceDeleteProvider extends AutoDisposeNotifierProviderImpl<
    ActiveResourceDelete, AsyncValue<void>> {
  /// See also [ActiveResourceDelete].
  ActiveResourceDeleteProvider({
    required String activeStructureCode,
    required String key,
  }) : this._internal(
          () => ActiveResourceDelete()
            ..activeStructureCode = activeStructureCode
            ..key = key,
          from: activeResourceDeleteProvider,
          name: r'activeResourceDeleteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceDeleteHash,
          dependencies: ActiveResourceDeleteFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceDeleteFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
          key: key,
        );

  ActiveResourceDeleteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.activeStructureCode,
    required this.key,
  }) : super.internal();

  final String activeStructureCode;
  final String key;

  @override
  AsyncValue<void> runNotifierBuild(
    covariant ActiveResourceDelete notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
      key: key,
    );
  }

  @override
  Override overrideWith(ActiveResourceDelete Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceDeleteProvider._internal(
        () => create()
          ..activeStructureCode = activeStructureCode
          ..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        activeStructureCode: activeStructureCode,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ActiveResourceDelete, AsyncValue<void>>
      createElement() {
    return _ActiveResourceDeleteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceDeleteProvider &&
        other.activeStructureCode == activeStructureCode &&
        other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceDeleteRef
    on AutoDisposeNotifierProviderRef<AsyncValue<void>> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `key` of this provider.
  String get key;
}

class _ActiveResourceDeleteProviderElement
    extends AutoDisposeNotifierProviderElement<ActiveResourceDelete,
        AsyncValue<void>> with ActiveResourceDeleteRef {
  _ActiveResourceDeleteProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as ActiveResourceDeleteProvider).activeStructureCode;
  @override
  String get key => (origin as ActiveResourceDeleteProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
