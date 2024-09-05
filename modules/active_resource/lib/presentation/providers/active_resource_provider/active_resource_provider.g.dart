// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_resource_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$activeResourceHash() => r'4fa02782d3a4a3b90d4e62aedbaf599991b57cd3';

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

abstract class _$ActiveResource
    extends BuildlessAutoDisposeNotifier<ActiveResourceState> {
  late final String activeStructureCode;

  ActiveResourceState build({
    required String activeStructureCode,
  });
}

/// See also [ActiveResource].
@ProviderFor(ActiveResource)
const activeResourceProvider = ActiveResourceFamily();

/// See also [ActiveResource].
class ActiveResourceFamily extends Family<ActiveResourceState> {
  /// See also [ActiveResource].
  const ActiveResourceFamily();

  /// See also [ActiveResource].
  ActiveResourceProvider call({
    required String activeStructureCode,
  }) {
    return ActiveResourceProvider(
      activeStructureCode: activeStructureCode,
    );
  }

  @override
  ActiveResourceProvider getProviderOverride(
    covariant ActiveResourceProvider provider,
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
  String? get name => r'activeResourceProvider';
}

/// See also [ActiveResource].
class ActiveResourceProvider extends AutoDisposeNotifierProviderImpl<
    ActiveResource, ActiveResourceState> {
  /// See also [ActiveResource].
  ActiveResourceProvider({
    required String activeStructureCode,
  }) : this._internal(
          () => ActiveResource()..activeStructureCode = activeStructureCode,
          from: activeResourceProvider,
          name: r'activeResourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$activeResourceHash,
          dependencies: ActiveResourceFamily._dependencies,
          allTransitiveDependencies:
              ActiveResourceFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
        );

  ActiveResourceProvider._internal(
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
  ActiveResourceState runNotifierBuild(
    covariant ActiveResource notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
    );
  }

  @override
  Override overrideWith(ActiveResource Function() create) {
    return ProviderOverride(
      origin: this,
      override: ActiveResourceProvider._internal(
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
  AutoDisposeNotifierProviderElement<ActiveResource, ActiveResourceState>
      createElement() {
    return _ActiveResourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ActiveResourceProvider &&
        other.activeStructureCode == activeStructureCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ActiveResourceRef on AutoDisposeNotifierProviderRef<ActiveResourceState> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;
}

class _ActiveResourceProviderElement extends AutoDisposeNotifierProviderElement<
    ActiveResource, ActiveResourceState> with ActiveResourceRef {
  _ActiveResourceProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as ActiveResourceProvider).activeStructureCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
