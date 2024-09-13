// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_submit_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceSubmitHash() =>
    r'1b69b1d0e8efcd6026a2728bebba819f261c8b07';

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

abstract class _$ActiveResourceSubmit
    extends BuildlessAutoDisposeNotifier<ActiveResourceSubmitState> {
  late final String activeStructureCode;
  late final String key;

  ActiveResourceSubmitState build({
    required String activeStructureCode,
    required String key,
  });
}

/// See also [ActiveResourceSubmit].
@ProviderFor(ActiveResourceSubmit)
const activeResourceSubmitProvider = ActiveResourceSubmitFamily();

/// See also [ActiveResourceSubmit].
class ActiveResourceSubmitFamily extends Family<ActiveResourceSubmitState> {
  /// See also [ActiveResourceSubmit].
  const ActiveResourceSubmitFamily();

  /// See also [ActiveResourceSubmit].
  ActiveResourceSubmitProvider call({
    required String activeStructureCode,
    required String key,
  }) {
    return ActiveResourceSubmitProvider(
      activeStructureCode: activeStructureCode,
      key: key,
    );
  }

  @override
  ActiveResourceSubmitProvider getProviderOverride(
    covariant ActiveResourceSubmitProvider provider,
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
  String? get name => r'activeResourceSubmitProvider';
}

/// See also [ActiveResourceSubmit].
class ActiveResourceSubmitProvider extends AutoDisposeNotifierProviderImpl<
    ActiveResourceSubmit, ActiveResourceSubmitState> {
  /// See also [ActiveResourceSubmit].
  ActiveResourceSubmitProvider({
    required String activeStructureCode,
    required String key,
  }) : this._internal(
          () => ActiveResourceSubmit()
            ..activeStructureCode = activeStructureCode
            ..key = key,
          from: activeResourceSubmitProvider,
          name: r'activeResourceSubmitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceSubmitHash,
          dependencies: ActiveResourceSubmitFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceSubmitFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
          key: key,
        );

  ActiveResourceSubmitProvider._internal(
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
  ActiveResourceSubmitState runNotifierBuild(
    covariant ActiveResourceSubmit notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
      key: key,
    );
  }

  @override
  Override overrideWith(ActiveResourceSubmit Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceSubmitProvider._internal(
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
  AutoDisposeNotifierProviderElement<ActiveResourceSubmit,
      ActiveResourceSubmitState> createElement() {
    return _ActiveResourceSubmitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceSubmitProvider &&
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

mixin ActiveResourceSubmitRef
    on AutoDisposeNotifierProviderRef<ActiveResourceSubmitState> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `key` of this provider.
  String get key;
}

class _ActiveResourceSubmitProviderElement
    extends AutoDisposeNotifierProviderElement<ActiveResourceSubmit,
        ActiveResourceSubmitState> with ActiveResourceSubmitRef {
  _ActiveResourceSubmitProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as ActiveResourceSubmitProvider).activeStructureCode;
  @override
  String get key => (origin as ActiveResourceSubmitProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
