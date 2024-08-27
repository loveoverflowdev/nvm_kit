// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentListHash() => r'94079aaabaf3aca0b791c9233e60a8ffe06acabd';

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

/// See also [commentList].
@ProviderFor(commentList)
const commentListProvider = CommentListFamily();

/// See also [commentList].
class CommentListFamily extends Family<AsyncValue<List<Comment>>> {
  /// See also [commentList].
  const CommentListFamily();

  /// See also [commentList].
  CommentListProvider call({
    required String resourceCode,
    required String resourceId,
  }) {
    return CommentListProvider(
      resourceCode: resourceCode,
      resourceId: resourceId,
    );
  }

  @override
  CommentListProvider getProviderOverride(
    covariant CommentListProvider provider,
  ) {
    return call(
      resourceCode: provider.resourceCode,
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
  String? get name => r'commentListProvider';
}

/// See also [commentList].
class CommentListProvider extends AutoDisposeFutureProvider<List<Comment>> {
  /// See also [commentList].
  CommentListProvider({
    required String resourceCode,
    required String resourceId,
  }) : this._internal(
          (ref) => commentList(
            ref as CommentListRef,
            resourceCode: resourceCode,
            resourceId: resourceId,
          ),
          from: commentListProvider,
          name: r'commentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentListHash,
          dependencies: CommentListFamily._dependencies,
          allTransitiveDependencies:
              CommentListFamily._allTransitiveDependencies,
          resourceCode: resourceCode,
          resourceId: resourceId,
        );

  CommentListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.resourceCode,
    required this.resourceId,
  }) : super.internal();

  final String resourceCode;
  final String resourceId;

  @override
  Override overrideWith(
    FutureOr<List<Comment>> Function(CommentListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CommentListProvider._internal(
        (ref) => create(ref as CommentListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        resourceCode: resourceCode,
        resourceId: resourceId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Comment>> createElement() {
    return _CommentListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentListProvider &&
        other.resourceCode == resourceCode &&
        other.resourceId == resourceId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, resourceCode.hashCode);
    hash = _SystemHash.combine(hash, resourceId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommentListRef on AutoDisposeFutureProviderRef<List<Comment>> {
  /// The parameter `resourceCode` of this provider.
  String get resourceCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;
}

class _CommentListProviderElement
    extends AutoDisposeFutureProviderElement<List<Comment>>
    with CommentListRef {
  _CommentListProviderElement(super.provider);

  @override
  String get resourceCode => (origin as CommentListProvider).resourceCode;
  @override
  String get resourceId => (origin as CommentListProvider).resourceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
