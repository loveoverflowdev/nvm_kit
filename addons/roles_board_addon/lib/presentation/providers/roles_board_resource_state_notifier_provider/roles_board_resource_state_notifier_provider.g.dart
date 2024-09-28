// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_board_resource_state_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rolesBoardResourceStateNotifierHash() =>
    r'e2abcf767037a4e3efba3dbdddf9a02714b68a36';

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

abstract class _$RolesBoardResourceStateNotifier
    extends BuildlessNotifier<AsyncValue<RolesBoardResourceState?>> {
  late final String resourceId;
  late final String addonInstanceCode;

  AsyncValue<RolesBoardResourceState?> build({
    required String resourceId,
    required String addonInstanceCode,
  });
}

/// See also [RolesBoardResourceStateNotifier].
@ProviderFor(RolesBoardResourceStateNotifier)
const rolesBoardResourceStateNotifierProvider =
    RolesBoardResourceStateNotifierFamily();

/// See also [RolesBoardResourceStateNotifier].
class RolesBoardResourceStateNotifierFamily
    extends Family<AsyncValue<RolesBoardResourceState?>> {
  /// See also [RolesBoardResourceStateNotifier].
  const RolesBoardResourceStateNotifierFamily();

  /// See also [RolesBoardResourceStateNotifier].
  RolesBoardResourceStateNotifierProvider call({
    required String resourceId,
    required String addonInstanceCode,
  }) {
    return RolesBoardResourceStateNotifierProvider(
      resourceId: resourceId,
      addonInstanceCode: addonInstanceCode,
    );
  }

  @override
  RolesBoardResourceStateNotifierProvider getProviderOverride(
    covariant RolesBoardResourceStateNotifierProvider provider,
  ) {
    return call(
      resourceId: provider.resourceId,
      addonInstanceCode: provider.addonInstanceCode,
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
  String? get name => r'rolesBoardResourceStateNotifierProvider';
}

/// See also [RolesBoardResourceStateNotifier].
class RolesBoardResourceStateNotifierProvider extends NotifierProviderImpl<
    RolesBoardResourceStateNotifier, AsyncValue<RolesBoardResourceState?>> {
  /// See also [RolesBoardResourceStateNotifier].
  RolesBoardResourceStateNotifierProvider({
    required String resourceId,
    required String addonInstanceCode,
  }) : this._internal(
          () => RolesBoardResourceStateNotifier()
            ..resourceId = resourceId
            ..addonInstanceCode = addonInstanceCode,
          from: rolesBoardResourceStateNotifierProvider,
          name: r'rolesBoardResourceStateNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rolesBoardResourceStateNotifierHash,
          dependencies: RolesBoardResourceStateNotifierFamily._dependencies,
          allTransitiveDependencies:
              RolesBoardResourceStateNotifierFamily._allTransitiveDependencies,
          resourceId: resourceId,
          addonInstanceCode: addonInstanceCode,
        );

  RolesBoardResourceStateNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.resourceId,
    required this.addonInstanceCode,
  }) : super.internal();

  final String resourceId;
  final String addonInstanceCode;

  @override
  AsyncValue<RolesBoardResourceState?> runNotifierBuild(
    covariant RolesBoardResourceStateNotifier notifier,
  ) {
    return notifier.build(
      resourceId: resourceId,
      addonInstanceCode: addonInstanceCode,
    );
  }

  @override
  Override overrideWith(RolesBoardResourceStateNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RolesBoardResourceStateNotifierProvider._internal(
        () => create()
          ..resourceId = resourceId
          ..addonInstanceCode = addonInstanceCode,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        resourceId: resourceId,
        addonInstanceCode: addonInstanceCode,
      ),
    );
  }

  @override
  NotifierProviderElement<RolesBoardResourceStateNotifier,
      AsyncValue<RolesBoardResourceState?>> createElement() {
    return _RolesBoardResourceStateNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RolesBoardResourceStateNotifierProvider &&
        other.resourceId == resourceId &&
        other.addonInstanceCode == addonInstanceCode;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceId.hashCode);
    hash = _SystemHash.combine(hash, addonInstanceCode.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RolesBoardResourceStateNotifierRef
    on NotifierProviderRef<AsyncValue<RolesBoardResourceState?>> {
  /// The parameter `resourceId` of this provider.
  String get resourceId;

  /// The parameter `addonInstanceCode` of this provider.
  String get addonInstanceCode;
}

class _RolesBoardResourceStateNotifierProviderElement
    extends NotifierProviderElement<RolesBoardResourceStateNotifier,
        AsyncValue<RolesBoardResourceState?>>
    with RolesBoardResourceStateNotifierRef {
  _RolesBoardResourceStateNotifierProviderElement(super.provider);

  @override
  String get resourceId =>
      (origin as RolesBoardResourceStateNotifierProvider).resourceId;
  @override
  String get addonInstanceCode =>
      (origin as RolesBoardResourceStateNotifierProvider).addonInstanceCode;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
