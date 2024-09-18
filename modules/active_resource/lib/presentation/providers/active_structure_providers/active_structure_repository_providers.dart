import 'package:active_resource/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;

final remoteActiveStructureRepositoryProvider =
    Provider<RemoteActiveStructureRepository>(
  (ref) => throw UnimplementedError(),
);

final localActiveStructureRepositoryProvider =
    Provider<LocalActiveStructureRepository>(
  (ref) => throw UnimplementedError(),
);
