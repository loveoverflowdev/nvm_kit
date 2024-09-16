import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preference/domain.dart';

final userPreferenceRepositoryProvider = Provider.autoDispose<UserPreferenceRepository>(
  (ref) => throw UnimplementedError(),
);
