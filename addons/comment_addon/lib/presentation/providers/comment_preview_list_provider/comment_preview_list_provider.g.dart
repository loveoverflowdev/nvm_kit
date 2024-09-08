// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_preview_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentPreviewListHash() =>
    r'7b930cec14acc4cdd898eb660fa184e85fb21a20';

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

/// See also [commentPreviewList].
@ProviderFor(commentPreviewList)
const commentPreviewListProvider = CommentPreviewListFamily();

/// See also [commentPreviewList].
class CommentPreviewListFamily extends Family<AsyncValue<List<Comment>>> {
  /// See also [commentPreviewList].
  const CommentPreviewListFamily();

  /// See also [commentPreviewList].
  CommentPreviewListProvider call({
    required String activeStructureCode,
    required String resourceId,
    required int limit,
  }) {
    return CommentPreviewListProvider(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
      limit: limit,
    );
  }

  @override
  CommentPreviewListProvider getProviderOverride(
    covariant CommentPreviewListProvider provider,
  ) {
    return call(
      activeStructureCode: provider.activeStructureCode,
      resourceId: provider.resourceId,
      limit: provider.limit,
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
  String? get name => r'commentPreviewListProvider';
}

/// See also [commentPreviewList].
class CommentPreviewListProvider
    extends AutoDisposeFutureProvider<List<Comment>> {
  /// See also [commentPreviewList].
  CommentPreviewListProvider({
    required String activeStructureCode,
    required String resourceId,
    required int limit,
  }) : this._internal(
          (ref) => commentPreviewList(
            ref as CommentPreviewListRef,
            activeStructureCode: activeStructureCode,
            resourceId: resourceId,
            limit: limit,
          ),
          from: commentPreviewListProvider,
          name: r'commentPreviewListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentPreviewListHash,
          dependencies: CommentPreviewListFamily._dependencies,
          allTransitiveDependencies:
              CommentPreviewListFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
          limit: limit,
        );

  CommentPreviewListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.activeStructureCode,
    required this.resourceId,
    required this.limit,
  }) : super.internal();

  final String activeStructureCode;
  final String resourceId;
  final int limit;

  @override
  Override overrideWith(
    FutureOr<List<Comment>> Function(CommentPreviewListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CommentPreviewListProvider._internal(
        (ref) => create(ref as CommentPreviewListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        activeStructureCode: activeStructureCode,
        resourceId: resourceId,
        limit: limit,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Comment>> createElement() {
    return _CommentPreviewListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentPreviewListProvider &&
        other.activeStructureCode == activeStructureCode &&
        other.resourceId == resourceId &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, activeStructureCode.hashCode);
    hash = _SystemHash.combine(hash, resourceId.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommentPreviewListRef on AutoDisposeFutureProviderRef<List<Comment>> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;

  /// The parameter `limit` of this provider.
  int get limit;
}

class _CommentPreviewListProviderElement
    extends AutoDisposeFutureProviderElement<List<Comment>>
    with CommentPreviewListRef {
  _CommentPreviewListProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as CommentPreviewListProvider).activeStructureCode;
  @override
  String get resourceId => (origin as CommentPreviewListProvider).resourceId;
  @override
  int get limit => (origin as CommentPreviewListProvider).limit;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
