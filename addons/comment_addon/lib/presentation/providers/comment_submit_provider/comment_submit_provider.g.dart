// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_submit_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentSubmitHash() => r'14e360f5cdfc1b964ec0304c14c0dfed4c4b8ade';

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

abstract class _$CommentSubmit
    extends BuildlessAutoDisposeNotifier<CommentSubmitState> {
  late final String activeStructureCode;
  late final String resourceId;
  late final String key;

  CommentSubmitState build({
    required String activeStructureCode,
    required String resourceId,
    required String key,
  });
}

/// See also [CommentSubmit].
@ProviderFor(CommentSubmit)
const commentSubmitProvider = CommentSubmitFamily();

/// See also [CommentSubmit].
class CommentSubmitFamily extends Family<CommentSubmitState> {
  /// See also [CommentSubmit].
  const CommentSubmitFamily();

  /// See also [CommentSubmit].
  CommentSubmitProvider call({
    required String activeStructureCode,
    required String resourceId,
    required String key,
  }) {
    return CommentSubmitProvider(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      key: key,
    );
  }

  @override
  CommentSubmitProvider getProviderOverride(
    covariant CommentSubmitProvider provider,
  ) {
    return call(
      activeStructureCode: provider.activeStructureCode,
      resourceId: provider.resourceId,
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
  String? get name => r'commentSubmitProvider';
}

/// See also [CommentSubmit].
class CommentSubmitProvider
    extends AutoDisposeNotifierProviderImpl<CommentSubmit, CommentSubmitState> {
  /// See also [CommentSubmit].
  CommentSubmitProvider({
    required String activeStructureCode,
    required String resourceId,
    required String key,
  }) : this._internal(
          () => CommentSubmit()
            ..activeStructureCode = activeStructureCode
            ..resourceId = resourceId
            ..key = key,
          from: commentSubmitProvider,
          name: r'commentSubmitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentSubmitHash,
          dependencies: CommentSubmitFamily._dependencies,
          allTransitiveDependencies:
              CommentSubmitFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
          key: key,
        );

  CommentSubmitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.activeStructureCode,
    required this.resourceId,
    required this.key,
  }) : super.internal();

  final String activeStructureCode;
  final String resourceId;
  final String key;

  @override
  CommentSubmitState runNotifierBuild(
    covariant CommentSubmit notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      key: key,
    );
  }

  @override
  Override overrideWith(CommentSubmit Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommentSubmitProvider._internal(
        () => create()
          ..activeStructureCode = activeStructureCode
          ..resourceId = resourceId
          ..key = key,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<CommentSubmit, CommentSubmitState>
      createElement() {
    return _CommentSubmitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentSubmitProvider &&
        other.activeStructureCode == activeStructureCode &&
        other.resourceId == resourceId &&
        other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);
    hash = _SystemHash.combine(hash, resourceId.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommentSubmitRef on AutoDisposeNotifierProviderRef<CommentSubmitState> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;

  /// The parameter `key` of this provider.
  String get key;
}

class _CommentSubmitProviderElement extends AutoDisposeNotifierProviderElement<
    CommentSubmit, CommentSubmitState> with CommentSubmitRef {
  _CommentSubmitProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as CommentSubmitProvider).activeStructureCode;
  @override
  String get resourceId => (origin as CommentSubmitProvider).resourceId;
  @override
  String get key => (origin as CommentSubmitProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
