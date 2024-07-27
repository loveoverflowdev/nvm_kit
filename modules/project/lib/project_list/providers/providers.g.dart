// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$projectRepositoryHash() => r'd8a7f46f3f48dbd723092f32eb1a186cb5dd53ee';

/// See also [projectRepository].
@ProviderFor(projectRepository)
final projectRepositoryProvider =
    AutoDisposeProvider<ProjectRepository>.internal(
  projectRepository,
  name: r'projectRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ProjectRepositoryRef = AutoDisposeProviderRef<ProjectRepository>;
String _$projectListHash() => r'169ff242a8b3e2f338e58745a0a66f19879891ca';

/// See also [ProjectList].
@ProviderFor(ProjectList)
final projectListProvider =
    AutoDisposeNotifierProvider<ProjectList, ProjectListState>.internal(
  ProjectList.new,
  name: r'projectListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$projectListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectList = AutoDisposeNotifier<ProjectListState>;
String _$projectInputHash() => r'b07d71e44112d1bd950a3485a16751170a59bfa8';

/// See also [ProjectInput].
@ProviderFor(ProjectInput)
final projectInputProvider =
    AutoDisposeNotifierProvider<ProjectInput, ProjectForm>.internal(
  ProjectInput.new,
  name: r'projectInputProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$projectInputHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectInput = AutoDisposeNotifier<ProjectForm>;
String _$projectFormSubmitHash() => r'e703bf5d2f2ca07fccf6d8af869bc70ea0fa65bc';

/// See also [ProjectFormSubmit].
@ProviderFor(ProjectFormSubmit)
final projectFormSubmitProvider = AutoDisposeNotifierProvider<ProjectFormSubmit,
    ProjectFormSubmitState>.internal(
  ProjectFormSubmit.new,
  name: r'projectFormSubmitProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$projectFormSubmitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ProjectFormSubmit = AutoDisposeNotifier<ProjectFormSubmitState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
