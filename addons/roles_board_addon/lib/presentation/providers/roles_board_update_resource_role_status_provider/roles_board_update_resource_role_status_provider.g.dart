// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_board_update_resource_role_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rolesBoardUpdateResourceRoleStatusHash() =>
    r'26eafaf5d073da2e4a8547f202ef02f4d630b1cb';

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
  late final String roleId;

  AsyncValue<dynamic> build({
    required String activeStructureCode,
    required String resourceId,
    required String roleId,
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
    required String roleId,
  }) {
    return RolesBoardUpdateResourceRoleStatusProvider(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      roleId: roleId,
    );
  }

  @override
  RolesBoardUpdateResourceRoleStatusProvider getProviderOverride(
    covariant RolesBoardUpdateResourceRoleStatusProvider provider,
  ) {
    return call(
      activeStructureCode: provider.activeStructureCode,
      resourceId: provider.resourceId,
      roleId: provider.roleId,
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
    required String roleId,
  }) : this._internal(
          () => RolesBoardUpdateResourceRoleStatus()
            ..activeStructureCode = activeStructureCode
            ..resourceId = resourceId
            ..roleId = roleId,
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
          roleId: roleId,
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
    required this.roleId,
  }) : super.internal();

  final String activeStructureCode;
  final String resourceId;
  final String roleId;

  @override
  AsyncValue<dynamic> runNotifierBuild(
    covariant RolesBoardUpdateResourceRoleStatus notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      roleId: roleId,
    );
  }

  @override
  Override overrideWith(RolesBoardUpdateResourceRoleStatus Function() create) {
    return ProviderOverride(
      origin: this,
      override: RolesBoardUpdateResourceRoleStatusProvider._internal(
        () => create()
          ..activeStructureCode = activeStructureCode
          ..resourceId = resourceId
          ..roleId = roleId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
        roleId: roleId,
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
        other.resourceId == resourceId &&
        other.roleId == roleId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);
    hash = _SystemHash.combine(hash, resourceId.hashCode);
    hash = _SystemHash.combine(hash, roleId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RolesBoardUpdateResourceRoleStatusRef
    on AutoDisposeNotifierProviderRef<AsyncValue<dynamic>> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;

  /// The parameter `roleId` of this provider.
  String get roleId;
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
  @override
  String get roleId =>
      (origin as RolesBoardUpdateResourceRoleStatusProvider).roleId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
