import 'package:active_resource/active_resource.dart';

abstract interface class ActiveStructureStorage {
  Future<ActiveStructure?> readActiveStructure({
    required String code,
  });

  Future<bool> writeActiveStructure({
    required String code,
    required ActiveStructure activeStructure,
  });

  Future<String?> readActiveStructureId({
    required String code,
  });
}
