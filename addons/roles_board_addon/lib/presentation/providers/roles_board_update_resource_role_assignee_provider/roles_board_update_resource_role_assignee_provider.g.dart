// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_board_update_resource_role_assignee_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rolesBoardUpdateResourceRoleAssigneeHash() =>
    r'3c72a64b644a36ed51ff51c2873ef54abb0b709d';

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

abstract class _$RolesBoardUpdateResourceRoleAssignee
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

/// See also [RolesBoardUpdateResourceRoleAssignee].
@ProviderFor(RolesBoardUpdateResourceRoleAssignee)
const rolesBoardUpdateResourceRoleAssigneeProvider =
    RolesBoardUpdateResourceRoleAssigneeFamily();

/// See also [RolesBoardUpdateResourceRoleAssignee].
class RolesBoardUpdateResourceRoleAssigneeFamily
    extends Family<AsyncValue<dynamic>> {
  /// See also [RolesBoardUpdateResourceRoleAssignee].
  const RolesBoardUpdateResourceRoleAssigneeFamily();

  /// See also [RolesBoardUpdateResourceRoleAssignee].
  RolesBoardUpdateResourceRoleAssigneeProvider call({
    required String activeStructureCode,
    required String resourceId,
    required String roleId,
  }) {
    return RolesBoardUpdateResourceRoleAssigneeProvider(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      roleId: roleId,
    );
  }

  @override
  RolesBoardUpdateResourceRoleAssigneeProvider getProviderOverride(
    covariant RolesBoardUpdateResourceRoleAssigneeProvider provider,
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
  String? get name => r'rolesBoardUpdateResourceRoleAssigneeProvider';
}

/// See also [RolesBoardUpdateResourceRoleAssignee].
class RolesBoardUpdateResourceRoleAssigneeProvider
    extends AutoDisposeNotifierProviderImpl<
        RolesBoardUpdateResourceRoleAssignee, AsyncValue<dynamic>> {
  /// See also [RolesBoardUpdateResourceRoleAssignee].
  RolesBoardUpdateResourceRoleAssigneeProvider({
    required String activeStructureCode,
    required String resourceId,
    required String roleId,
  }) : this._internal(
          () => RolesBoardUpdateResourceRoleAssignee()
            ..activeStructureCode = activeStructureCode
            ..resourceId = resourceId
            ..roleId = roleId,
          from: rolesBoardUpdateResourceRoleAssigneeProvider,
          name: r'rolesBoardUpdateResourceRoleAssigneeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rolesBoardUpdateResourceRoleAssigneeHash,
          dependencies:
              RolesBoardUpdateResourceRoleAssigneeFamily._dependencies,
          allTransitiveDependencies: RolesBoardUpdateResourceRoleAssigneeFamily
              ._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
          roleId: roleId,
        );

  RolesBoardUpdateResourceRoleAssigneeProvider._internal(
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
    covariant RolesBoardUpdateResourceRoleAssignee notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      roleId: roleId,
    );
  }

  @override
  Override overrideWith(
      RolesBoardUpdateResourceRoleAssignee Function() create) {
    return ProviderOverride(
      origin: this,
      override: RolesBoardUpdateResourceRoleAssigneeProvider._internal(
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
  AutoDisposeNotifierProviderElement<RolesBoardUpdateResourceRoleAssignee,
      AsyncValue<dynamic>> createElement() {
    return _RolesBoardUpdateResourceRoleAssigneeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RolesBoardUpdateResourceRoleAssigneeProvider &&
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

mixin RolesBoardUpdateResourceRoleAssigneeRef
    on AutoDisposeNotifierProviderRef<AsyncValue<dynamic>> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;

  /// The parameter `roleId` of this provider.
  String get roleId;
}

class _RolesBoardUpdateResourceRoleAssigneeProviderElement
    extends AutoDisposeNotifierProviderElement<
        RolesBoardUpdateResourceRoleAssignee,
        AsyncValue<dynamic>> with RolesBoardUpdateResourceRoleAssigneeRef {
  _RolesBoardUpdateResourceRoleAssigneeProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as RolesBoardUpdateResourceRoleAssigneeProvider)
          .activeStructureCode;
  @override
  String get resourceId =>
      (origin as RolesBoardUpdateResourceRoleAssigneeProvider).resourceId;
  @override
  String get roleId =>
      (origin as RolesBoardUpdateResourceRoleAssigneeProvider).roleId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
