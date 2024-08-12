import 'package:auth/data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_storage_provider.g.dart';

@riverpod
TokenStorage tokenStorage(TokenStorageRef ref) => TokenStorage.inMemory();
