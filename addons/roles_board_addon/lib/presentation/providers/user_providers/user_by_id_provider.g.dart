// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_by_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userByIdHash() => r'506b917415a6ae2ab377199fb96ad2a69c6afb7a';

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

abstract class _$UserById extends BuildlessNotifier<AsyncValue<User?>> {
  late final String id;

  AsyncValue<User?> build({
    required String id,
  });
}

/// See also [UserById].
@ProviderFor(UserById)
const userByIdProvider = UserByIdFamily();

/// See also [UserById].
class UserByIdFamily extends Family<AsyncValue<User?>> {
  /// See also [UserById].
  const UserByIdFamily();

  /// See also [UserById].
  UserByIdProvider call({
    required String id,
  }) {
    return UserByIdProvider(
      id: id,
    );
  }

  @override
  UserByIdProvider getProviderOverride(
    covariant UserByIdProvider provider,
  ) {
    return call(
      id: provider.id,
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
  String? get name => r'userByIdProvider';
}

/// See also [UserById].
class UserByIdProvider
    extends NotifierProviderImpl<UserById, AsyncValue<User?>> {
  /// See also [UserById].
  UserByIdProvider({
    required String id,
  }) : this._internal(
          () => UserById()..id = id,
          from: userByIdProvider,
          name: r'userByIdProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userByIdHash,
          dependencies: UserByIdFamily._dependencies,
          allTransitiveDependencies: UserByIdFamily._allTransitiveDependencies,
          id: id,
        );

  UserByIdProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  AsyncValue<User?> runNotifierBuild(
    covariant UserById notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }

  @override
  Override overrideWith(UserById Function() create) {
    return ProviderOverride(
      origin: this,
      override: UserByIdProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  NotifierProviderElement<UserById, AsyncValue<User?>> createElement() {
    return _UserByIdProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserByIdProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserByIdRef on NotifierProviderRef<AsyncValue<User?>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _UserByIdProviderElement
    extends NotifierProviderElement<UserById, AsyncValue<User?>>
    with UserByIdRef {
  _UserByIdProviderElement(super.provider);

  @override
  String get id => (origin as UserByIdProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
