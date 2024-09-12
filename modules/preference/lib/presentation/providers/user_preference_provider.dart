import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preference/domain.dart';

final userPreferenceProvider = Provider.autoDispose<UserPreferenceRepository>(
  (ref) => throw UnimplementedError(),
);
