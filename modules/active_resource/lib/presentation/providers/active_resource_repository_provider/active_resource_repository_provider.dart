import 'package:active_resource/data.dart';
import 'package:active_resource/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_resource_repository_provider.g.dart';

@riverpod
ActiveResourceRepository activeResourceRepository(
    ActiveResourceRepositoryRef ref) {
  return RemoteActiveResourceRepository();
}
