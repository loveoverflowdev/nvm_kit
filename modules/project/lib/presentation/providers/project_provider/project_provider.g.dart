// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectHash() => r'c205703aef66817bc596a8f12b67d6a6121386f4';

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

/// See also [project].
@ProviderFor(project)
const projectProvider = ProjectFamily();

/// See also [project].
class ProjectFamily extends Family<AsyncValue<Project>> {
  /// See also [project].
  const ProjectFamily();

  /// See also [project].
  ProjectProvider call({
    required String projectId,
  }) {
    return ProjectProvider(
      projectId: projectId,
    );
  }

  @override
  ProjectProvider getProviderOverride(
    covariant ProjectProvider provider,
  ) {
    return call(
      projectId: provider.projectId,
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
  String? get name => r'projectProvider';
}

/// See also [project].
class ProjectProvider extends AutoDisposeFutureProvider<Project> {
  /// See also [project].
  ProjectProvider({
    required String projectId,
  }) : this._internal(
          (ref) => project(
            ref as ProjectRef,
            projectId: projectId,
          ),
          from: projectProvider,
          name: r'projectProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$projectHash,
          dependencies: ProjectFamily._dependencies,
          allTransitiveDependencies: ProjectFamily._allTransitiveDependencies,
          projectId: projectId,
        );

  ProjectProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.projectId,
  }) : super.internal();

  final String projectId;

  @override
  Override overrideWith(
    FutureOr<Project> Function(ProjectRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ProjectProvider._internal(
        (ref) => create(ref as ProjectRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        projectId: projectId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Project> createElement() {
    return _ProjectProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectProvider && other.projectId == projectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, projectId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ProjectRef on AutoDisposeFutureProviderRef<Project> {
  /// The parameter `projectId` of this provider.
  String get projectId;
}

class _ProjectProviderElement extends AutoDisposeFutureProviderElement<Project>
    with ProjectRef {
  _ProjectProviderElement(super.provider);

  @override
  String get projectId => (origin as ProjectProvider).projectId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
