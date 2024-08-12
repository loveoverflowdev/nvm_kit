// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenStorageHash() => r'0f3d3f576152a6e3db0d71522043664d346a8b65';

/// See also [tokenStorage].
@ProviderFor(tokenStorage)
final tokenStorageProvider = AutoDisposeProvider<TokenStorage>.internal(
  tokenStorage,
  name: r'tokenStorageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tokenStorageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TokenStorageRef = AutoDisposeProviderRef<TokenStorage>;
String _$authRepositoryHash() => r'87c37bb9d3e248284b04b0690e5567041966934e';

/// See also [authRepository].
@ProviderFor(authRepository)
final authRepositoryProvider = AutoDisposeProvider<AuthRepository>.internal(
  authRepository,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AuthRepositoryRef = AutoDisposeProviderRef<AuthRepository>;
String _$signinSubmitHash() => r'2eaf9a7823610d0f6b5f98d50d5f9c3972d2e440';

/// See also [SigninSubmit].
@ProviderFor(SigninSubmit)
final signinSubmitProvider =
    AutoDisposeNotifierProvider<SigninSubmit, SigninSubmitState>.internal(
  SigninSubmit.new,
  name: r'signinSubmitProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signinSubmitHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SigninSubmit = AutoDisposeNotifier<SigninSubmitState>;
String _$signinInputHash() => r'ebf637aed4e02355a952bac7b2b0acd4df9a201d';

/// See also [SigninInput].
@ProviderFor(SigninInput)
final signinInputProvider =
    AutoDisposeNotifierProvider<SigninInput, SigninForm>.internal(
  SigninInput.new,
  name: r'signinInputProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$signinInputHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SigninInput = AutoDisposeNotifier<SigninForm>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
