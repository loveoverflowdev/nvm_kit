// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commentListHash() => r'7601c6c956781bd9416a1f832edc334205ff5654';

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

abstract class _$CommentList
    extends BuildlessAutoDisposeNotifier<CommentListState> {
  late final String activeStructureCode;
  late final String resourceId;

  CommentListState build({
    required String activeStructureCode,
    required String resourceId,
  });
}

/// See also [CommentList].
@ProviderFor(CommentList)
const commentListProvider = CommentListFamily();

/// See also [CommentList].
class CommentListFamily extends Family<CommentListState> {
  /// See also [CommentList].
  const CommentListFamily();

  /// See also [CommentList].
  CommentListProvider call({
    required String activeStructureCode,
    required String resourceId,
  }) {
    return CommentListProvider(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    );
  }

  @override
  CommentListProvider getProviderOverride(
    covariant CommentListProvider provider,
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
  String? get name => r'commentListProvider';
}

/// See also [CommentList].
class CommentListProvider
    extends AutoDisposeNotifierProviderImpl<CommentList, CommentListState> {
  /// See also [CommentList].
  CommentListProvider({
    required String activeStructureCode,
    required String resourceId,
  }) : this._internal(
          () => CommentList()
            ..activeStructureCode = activeStructureCode
            ..resourceId = resourceId,
          from: commentListProvider,
          name: r'commentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commentListHash,
          dependencies: CommentListFamily._dependencies,
          allTransitiveDependencies:
              CommentListFamily._allTransitiveDependencies,
          activeStructureCode: activeStructureCode,
          resourceId: resourceId,
        );

  CommentListProvider._internal(
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
  CommentListState runNotifierBuild(
    covariant CommentList notifier,
  ) {
    return notifier.build(
      activeStructureCode: activeStructureCode,
      resourceId: resourceId,
    );
  }

  @override
  Override overrideWith(CommentList Function() create) {
    return ProviderOverride(
      origin: this,
      override: CommentListProvider._internal(
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
  AutoDisposeNotifierProviderElement<CommentList, CommentListState>
      createElement() {
    return _CommentListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommentListProvider &&
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

mixin CommentListRef on AutoDisposeNotifierProviderRef<CommentListState> {
  /// The parameter `activeStructureCode` of this provider.
  String get activeStructureCode;

  /// The parameter `resourceId` of this provider.
  String get resourceId;
}

class _CommentListProviderElement
    extends AutoDisposeNotifierProviderElement<CommentList, CommentListState>
    with CommentListRef {
  _CommentListProviderElement(super.provider);

  @override
  String get activeStructureCode =>
      (origin as CommentListProvider).activeStructureCode;
  @override
  String get resourceId => (origin as CommentListProvider).resourceId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
