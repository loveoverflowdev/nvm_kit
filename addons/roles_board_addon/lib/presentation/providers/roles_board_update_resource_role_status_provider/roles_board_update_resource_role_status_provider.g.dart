// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_board_update_resource_role_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rolesBoardUpdateResourceRoleStatusHash() =>
    r'6318a3153c81f8bbd4aae385723831ae6d7fb93e';

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

abstract class _$RolesBoardUpdateResourceRoleStatus
    extends BuildlessAutoDisposeNotifier<AsyncValue<dynamic>> {
  late final String activeStructureCode;
  late final String resourceId;

  AsyncValue<dynamic> build({
    required String activeStructureCode,
    required String resourceId,
  });
}

/// See also [RolesBoardUpdateResourceRoleStatus].
@ProviderFor(RolesBoardUpdateResourceRoleStatus)
const rolesBoardUpdateResourceRoleStatusProvider =
    RolesBoardUpdateResourceRoleStatusFamily();

/// See also [RolesBoardUpdateResourceRoleStatus].
class RolesBoardUpdateResourceRoleStatusFamily
    extends Family<AsyncValue<dynamic>> {
  /// See also [RolesBoardUpdateResourceRoleStatus].
  const RolesBoardUpdateResourceRoleStatusFamily();

  /// See also [RolesBoardUpdateResourceRoleStatus].
  RolesBoardUpdateResourceRoleStatusProvider call({
    required String activeStructureCode,
    required String resourceId,
  }) {
    return RolesBoardUpdateResourceRoleStatusProvider(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    );
  }

  @override
  RolesBoardUpdateResourceRoleStatusProvider getProviderOverride(
    covariant RolesBoardUpdateResourceRoleStatusProvider provider,
  ) {
    return call(
      activeStructureCode: provider.activeStructureCode,
      resourceId: provider.resourceId,
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
  String? get name => r'rolesBoardUpdateResourceRoleStatusProvider';
}

/// See also [RolesBoardUpdateResourceRoleStatus].
class RolesBoardUpdateResourceRoleStatusProvider
    extends AutoDisposeNotifierProviderImpl<RolesBoardUpdateResourceRoleStatus,
        AsyncValue<dynamic>> {
  /// See also [RolesBoardUpdateResourceRoleStatus].
  RolesBoardUpdateResourceRoleStatusProvider({
    required String activeStructureCode,
    required String resourceId,
  }) : this._internal(
          () => RolesBoardUpdateResourceRoleStatus()
            ..activeStructureCode = activeStructureCode
            ..resourceId = resourceId,
          from: rolesBoardUpdateResourceRoleStatusProvider,
          name: r'rolesBoardUpdateResourceRoleStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rolesBoardUpdateResourceRoleStatusHash,
          dependencies: RolesBoardUpdateResourceRoleStatusFamily._dependencies,
          allTransitiveDependencies: RolesBoardUpdateResourceRoleStatusFamily
              ._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
        );

  RolesBoardUpdateResourceRoleStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.activeStructureCode,
    required this.resourceId,
  }) : super.internal();

  final String activeStructureCode;
  final String resourceId;

  @override
  AsyncValue<dynamic> runNotifierBuild(
    covariant RolesBoardUpdateResourceRoleStatus notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    );
  }

  @override
  Override overrideWith(RolesBoardUpdateResourceRoleStatus Function() create) {
    return ProviderOverride(
      origin: this,
      override: RolesBoardUpdateResourceRoleStatusProvider._internal(
        () => create()
          ..activeStructureCode = activeStructureCode
          ..resourceId = resourceId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<RolesBoardUpdateResourceRoleStatus,
      AsyncValue<dynamic>> createElement() {
    return _RolesBoardUpdateResourceRoleStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RolesBoardUpdateResourceRoleStatusProvider &&
        other.activeStructureCode == activeStructureCode &&
        other.resourceId == resourceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);
    hash = _SystemHash.combine(hash, resourceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RolesBoardUpdateResourceRoleStatusRef
    on AutoDisposeNotifierProviderRef<AsyncValue<dynamic>> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;
}

class _RolesBoardUpdateResourceRoleStatusProviderElement
    extends AutoDisposeNotifierProviderElement<
        RolesBoardUpdateResourceRoleStatus,
        AsyncValue<dynamic>> with RolesBoardUpdateResourceRoleStatusRef {
  _RolesBoardUpdateResourceRoleStatusProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as RolesBoardUpdateResourceRoleStatusProvider)
          .activeStructureCode;
  @override
  String get resourceId =>
      (origin as RolesBoardUpdateResourceRoleStatusProvider).resourceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
