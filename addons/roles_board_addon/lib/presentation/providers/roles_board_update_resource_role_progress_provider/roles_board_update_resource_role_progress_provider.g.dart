// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roles_board_update_resource_role_progress_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rolesBoardUpdateResourceRoleProgressHash() =>
    r'b2a3fe449ee982d71b1adbe84b6d97bb2b33bd02';

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

abstract class _$RolesBoardUpdateResourceRoleProgress
    extends BuildlessAutoDisposeNotifier<AsyncValue<dynamic>> {
  late final String roleId;
  late final String activeStructureCode;
  late final String resourceId;

  AsyncValue<dynamic> build({
    required String roleId,
    required String activeStructureCode,
    required String resourceId,
  });
}

/// See also [RolesBoardUpdateResourceRoleProgress].
@ProviderFor(RolesBoardUpdateResourceRoleProgress)
const rolesBoardUpdateResourceRoleProgressProvider =
    RolesBoardUpdateResourceRoleProgressFamily();

/// See also [RolesBoardUpdateResourceRoleProgress].
class RolesBoardUpdateResourceRoleProgressFamily
    extends Family<AsyncValue<dynamic>> {
  /// See also [RolesBoardUpdateResourceRoleProgress].
  const RolesBoardUpdateResourceRoleProgressFamily();

  /// See also [RolesBoardUpdateResourceRoleProgress].
  RolesBoardUpdateResourceRoleProgressProvider call({
    required String roleId,
    required String activeStructureCode,
    required String resourceId,
  }) {
    return RolesBoardUpdateResourceRoleProgressProvider(
      roleId: roleId,
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    );
  }

  @override
  RolesBoardUpdateResourceRoleProgressProvider getProviderOverride(
    covariant RolesBoardUpdateResourceRoleProgressProvider provider,
  ) {
    return call(
      roleId: provider.roleId,
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
  String? get name => r'rolesBoardUpdateResourceRoleProgressProvider';
}

/// See also [RolesBoardUpdateResourceRoleProgress].
class RolesBoardUpdateResourceRoleProgressProvider
    extends AutoDisposeNotifierProviderImpl<
        RolesBoardUpdateResourceRoleProgress, AsyncValue<dynamic>> {
  /// See also [RolesBoardUpdateResourceRoleProgress].
  RolesBoardUpdateResourceRoleProgressProvider({
    required String roleId,
    required String activeStructureCode,
    required String resourceId,
  }) : this._internal(
          () => RolesBoardUpdateResourceRoleProgress()
            ..roleId = roleId
            ..activeStructureCode = activeStructureCode
            ..resourceId = resourceId,
          from: rolesBoardUpdateResourceRoleProgressProvider,
          name: r'rolesBoardUpdateResourceRoleProgressProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rolesBoardUpdateResourceRoleProgressHash,
          dependencies:
              RolesBoardUpdateResourceRoleProgressFamily._dependencies,
          allTransitiveDependencies: RolesBoardUpdateResourceRoleProgressFamily
              ._allTransitiveDependencies,
          roleId: roleId,
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
        );

  RolesBoardUpdateResourceRoleProgressProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.roleId,
    required this.activeStructureCode,
    required this.resourceId,
  }) : super.internal();

  final String roleId;
  final String activeStructureCode;
  final String resourceId;

  @override
  AsyncValue<dynamic> runNotifierBuild(
    covariant RolesBoardUpdateResourceRoleProgress notifier,
  ) {
    return notifier.build(
      roleId: roleId,
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    );
  }

  @override
  Override overrideWith(
      RolesBoardUpdateResourceRoleProgress Function() create) {
    return ProviderOverride(
      origin: this,
      override: RolesBoardUpdateResourceRoleProgressProvider._internal(
        () => create()
          ..roleId = roleId
          ..activeStructureCode = activeStructureCode
          ..resourceId = resourceId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        roleId: roleId,
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<RolesBoardUpdateResourceRoleProgress,
      AsyncValue<dynamic>> createElement() {
    return _RolesBoardUpdateResourceRoleProgressProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RolesBoardUpdateResourceRoleProgressProvider &&
        other.roleId == roleId &&
        other.activeStructureCode == activeStructureCode &&
        other.resourceId == resourceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, roleId.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);
    hash = _SystemHash.combine(hash, resourceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RolesBoardUpdateResourceRoleProgressRef
    on AutoDisposeNotifierProviderRef<AsyncValue<dynamic>> {
  /// The parameter `roleId` of this provider.
  String get roleId;

  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;
}

class _RolesBoardUpdateResourceRoleProgressProviderElement
    extends AutoDisposeNotifierProviderElement<
        RolesBoardUpdateResourceRoleProgress,
        AsyncValue<dynamic>> with RolesBoardUpdateResourceRoleProgressRef {
  _RolesBoardUpdateResourceRoleProgressProviderElement(super.provider);

  @override
  String get roleId =>
      (origin as RolesBoardUpdateResourceRoleProgressProvider).roleId;
  @override
  String get activeStructureCode =>
      (origin as RolesBoardUpdateResourceRoleProgressProvider)
          .activeStructureCode;
  @override
  String get resourceId =>
      (origin as RolesBoardUpdateResourceRoleProgressProvider).resourceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
